require 'mongo_mapper'
MongoMapper.connection = Mongo::MongoClient.new('127.0.0.1', 27017)
MongoMapper.database = "test"
MongoMapper.database.collections.each{ |c| puts  c}
