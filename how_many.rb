#=begin
Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive: 'suv' != 'SUV'. Once counted, print each element alongside the number of occurrences.

Expected output:
car => 4
truck => 3
SUV => 1
motorcycle => 2
=end
#=begin PEDAC
def count_occurrences(array)
  make a hash with array.uniq keys v = 0
  iterate through the array again
  each key ? v += 1 

  Found this yesterday:
  
  array = ["John", "Joe", "Marcel", "John", "AJ", "Marcel", "John"]
  array.each_with_object(Hash.new(0)) do |element, hash|
    hash[element] += 1
  end
#=> { "John"=>3, "Joe"=>1, "Marcel"=>2, "AJ"=>1 }
=end
#=begin MY CODE WORKS
def count_occurrences(array)
  hash = array.each_with_object(Hash.new(0)) do |element, hash|
    hash[element] += 1
  end
  hash.each {|k,v| puts "#{k} => #{v}"}
end
=end
