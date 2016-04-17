require 'mongo'

# Set your settings here ---> Start
mongo_host = '127.0.0.1:27017'
mongo_database = 'test'
mongo_collection = 'mongo_base_processos'
sort_order = 'desc' # asc, desc are supported values
# Set your settings here --> End

Mongo::Logger.logger.level = ::Logger::FATAL
db = Mongo::Client.new([mongo_host], :database => mongo_database)
cols = []
sort = 1

if sort_order == 'desc'
  sort = -1
end


db[mongo_collection].find().limit(1).each do |document|
  cols = document.keys
end

cols.each do |col|
  if col == '_id'
    next
  end

  puts "Count of differnt values in column: #{col}"
  puts "----------------------------------------------"
  group1 = {
    '$group': {
      _id: "$#{col}",
      count: { '$sum': 1 }
    }
  }
  group2 = {
    '$sort': {
       count: sort
    }
  }
  agg = db[mongo_collection].aggregate([group1, group2])
  agg.each do |doc|
    puts "#{doc['_id']} | #{doc['count']}"
  end
  puts "\n\n\n\n"
end
