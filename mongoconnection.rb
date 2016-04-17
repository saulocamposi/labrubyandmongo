require 'mongo'

# Set your settings here ---> Start
mongo_host = '127.0.0.1:27017'
mongo_database = 'test'
mongo_collection = 'book'
sort_order = 'desc' # asc, desc are supported values

Mongo::Logger.logger.level = ::Logger::FATAL
db = Mongo::Client.new([mongo_host], :database => mongo_database)

db[mongo_collection].find().limit(1).each do |document|
  cols = document.keys
  puts cols  
end
