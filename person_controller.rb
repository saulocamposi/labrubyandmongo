#include 'person.rb'

#=begin
class Person
  attr_reader :name, :age, :gender

  def initialize ( name, age, gender )
    @name = name
    @age = age
    @gender = gender
  end

  def personvalidate
      if @name.nil?
        @name = "null name"
      end

      if @age.nil?
        @age = "null age"
      end

      if @gender.nil?
        @gender = "null gender"
      end
    end
end
#=end
class PersonController

  def insertPerson

    person_one = Person.new("name", "age", "gender")

    puts person_one.name
    puts person_one.age
    puts person_one.gender

    person_two = Person.new(nil, nil, nil)

    puts person_two.name
    puts person_two.age
    puts person_two.gender

    person_two.personvalidate

    puts person_two.name
    puts person_two.age
    puts person_two.gender

  end

  def hashperson

  end
end

person = PersonController.new
person.insertPerson()
