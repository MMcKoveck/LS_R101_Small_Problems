#=begin
Write a method that counts the number of occurrences of each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
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
#=begin THEIR CODE
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element| # HERE IS THE .uniq METHOD
    occurrences[element] = array.count(element) # THIS USES A .count METHOD!
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

As we iterate over each unique element, we create a new key-value pair in occurrences,
 with the key as the element's' value. To count each occurrence, 
 we use Array.count to count the number of elements with the same value.

Lastly, to print the desired output, we call .each on the newly created occurrences, 
which lets us pass the keys and values as block parameters. 
Then, inside of the block, we invoke .puts to print each key-value pair.
=end
#=begin FE
Try to solve the problem when words are case insensitive, e.g. "suv" == "SUV".

def count_occurrences(array)
  hash = array.each_with_object(Hash.new(0)) do |element, hash|
    hash[element =~ '/i'] += 1 # =~ does not work
  end
  hash.each {|k,v| puts "#{k} => #{v}"}
end

#=begin RICH'S' CODE
def count_occurrences(vehicles)
  vehicles.tally.each do |k, v|
    puts "#{k} => #{v}"
  end
end
# TALLY IS NICE
#=begin MITCH MILLS'' CODE
Of course there's' also Enumerable.tally, which is so easy it kind of feels like cheating:

def count_occurrences(array)
  array.map(&:downcase).tally.each { |type, count| puts "#{type} => #{count}" }
end
# HE'S' ALSO GOT THAT (&:downcase) in there to make suv == SUV
def count_occurrences(array)
  hash = array.each_with_object(Hash.new(0)) do |element, hash|
    hash[element.downcase] += 1 # THANKS TO SHAWN GRYCKI FOR WHERE TO PUT THAT .downcase
  end
  hash.each {|k,v| puts "#{k} => #{v}"}
end