

my_array = [1, 2, 3, 4, 5]
result = 0

array_2 = [];

my_array.each do |x|
    x = x**2
    puts x
end

def squareList(varList)
    varArr = [];
    varList.each do |x|
        x = x ** 2
        varArr.push(x)
    end
    
    return varArr;
end

puts "another divide"

def squareListdos(f)
    f.each do |n| 
        n = n ** 2
        puts n
    end
end



array_2 = squareList(my_array)

puts "divide" 

print array_2

puts "divide"

def cube(y)
    y ** (1/3) 
end

cube(9)


en = [5,6,4,1,3,9]
em = []

em = en.sort

print en
print em