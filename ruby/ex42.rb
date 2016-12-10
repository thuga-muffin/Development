# Animal is-a object
class Animal
end

# Dog is-a Animea
class Dog < Animal

	def initialize(name)
		# name is a variable set as the parameter for init
		@name = name
	end
end

# Cat is an Animal
class Cat < Animal

	def initialize(name)
		# name is a variable set to the parameter for init
		@name = name
	end
end

# Person is a object
class Person

	def initialize(name)
		# name is a variable
		@name = name

		# Person has a pet of some kind(me: a space for a pet)
		@pet = nil
	end

	attr_accessor :pet
end

# Employee is-a person
class Employee < Person

	def initialize(name, salary)
		# the Person who is an Employee
		super(name)
		# salary is a variable set to the salary parameter for init
		@salary = salary
	end

end

# Fish is-a object
class Fish
end

# Salmon is-a Fish
class Salmon < Fish
end

# Halibut is a Fish
class Halibut < Fish
end


# rover is-a Dog
rover = Dog.new("Rover")

# satan is-a Cat
satan = Cat.new("Satan")

# Mary is-a Person
mary = Person.new("Mary")

# Mary has-a cat named "Satan"
mary.pet = satan

# frank is-a Employee w/ a salary of 120,000
frank = Employee.new("Frank", 120000)

# Frank has-a pet named "Rover"
frank.pet = rover

# flipper is-a instance of Fish
flipper = Fish.new()

# crouse is-a instance of Salmon
crouse = Salmon.new()

# harry is-a instance of Halibut
harry = Halibut.new()