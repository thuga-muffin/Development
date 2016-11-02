


def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)


def welcome 
  puts "Hello World"
end

welcome

def wassup(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end

wassup("What up doe", "Calvin", "DeMarco", "Dmitri")

def greeting(name) 
  puts "What up doe " + name + "!"
end

def greetingALt(name)
  puts "What up doe #{name}!"
end

greeting("James")
greetingALt("James")

myString = "terrence"

puts myString.capitalize

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

puts books

# Sort your books in descending order, in-place below

books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

puts books

# Or

books.sort! do |first, second|
    if first < second
        1
    elsif first > second
        -1
    else
        0
    end
end

puts books

test_numbah = [16,24,40,8,32]

test_numbah.sort!
puts test_numbah

test_numbah.sort! do |one, two|
    if one > two
        1
    elsif one < two
        -1
    else
        0
    end
end


puts test_numbah

test_numbah.sort! do |one, two|
    if one > two
        -1
    elsif one < two
        1
    else
        0
    end
end

puts test_numbah

8 <=> 13

13 <=> 8

def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"


def alphabetize(arr, rev = false)
    arr.sort!
    if rev == true
        return arr.reverse!
  else 
    return arr.sort!
  end
end

numbers = [32, 1, 56, 81, 7]

puts alphabetize(numbers)
puts alphabetize(numbers, true)





















