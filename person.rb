class Person
  attr_reader :name, :age, :gender

  initialize ( name, age, gender )

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
end
