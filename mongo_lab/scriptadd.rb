require 'mongo'

# Set your settings here ---> Start
mongo_host = '127.0.0.1:27017'
mongo_database = 'test'
mongo_collection = 'book'
sort_order = 'desc' # asc, desc are supported values
# Set your settings here --> End

Mongo::Logger.logger.level = ::Logger::FATAL
db = Mongo::Client.new([mongo_host], :database => mongo_database)
cols = []
uniquekeys = []
sort = 1

if sort_order == 'desc'
  sort = -1
end

db[mongo_collection].find().each do |document|
  cols.push(document.keys)
end

cols.each do |values|
   uniquekeys.push(values).uniq
end

puts uniquekeys
