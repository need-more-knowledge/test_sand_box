require 'rspec'
require_relative 'Animal'

describe 'Test Animal Class' do
  context 'to test age' do
    it 'should get initialized name' do
      #create an animal class obj &  initialize it
      #pass some variables to constructor
      animal = Animal.new('dog', 6)
      #get the name value
      nameValue = animal.getName
      #check that it is correct
      puts nameValue
    end

    it 'should get set name' do
      #create an animal class obj &  initialize it
      #pass some variables to constructor
      animal = Animal.new('dog', 6)
      #call the method getAge & assing it into var ageValue
      ageValue = animal.getAge
      #check that it is correct
      puts ageValue
    end

    it 'should get set age' do
      #create an animal class obj &  initialize it
      #pass some variables to constructor
      animal = Animal.new('dog', 6)
      #set new name to an object
      animal.setAge(10)
      #get the name value
      ageValue = animal.getAge
      #check that it is correct
      puts ageValue
    end
  end

  context 'to test Name' do
    it 'should get initialized name' do
      #create an animal class obj &  initialize it
      #pass some variables to constructor
      animal = Animal.new('dog', 6)
      #get the name value
      nameValue = animal.getName
      #check that it is correct
      puts nameValue
    end

    it 'should get set name' do
      #create an animal class obj &  initialize it
      #pass some variables to constructor
      animal = Animal.new('dog', 6)
      #set new name to an object
      animal.setName('Max')
      #get the name value
      nameValue = animal.getName
      #check that it is correct
      puts nameValue
    end

    it 'should get set name' do
      #create an animal class obj &  initialize it
      #pass some variables to constructor
      animal = Animal.new('dog', 6)
      #set new name to an object
      animal.setName('Max')
      #get the name value
      nameValue = animal.getName
      #check that it is correct
      puts nameValue
    end
  end
end
