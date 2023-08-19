=begin
Write a method that calculates and returns the index of the first Fibonacci number 
that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

Examples:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
You may assume that the argument is always greater than or equal to 2.
#=begin PEDAC
def ffibl(digits)
  get length of target
  start a loop counter at 1 XX DON'T' NEED A COUNTER!
loop generating fib number until number length == target
return counter number XX array.size INSTEAD

#=end # PEDAC
#=begin MY CODE
def ffibl(length)
 # index = 2
  fib = [1, 1]
  loop do 
    fib << fib[-1] + fib[-2]
    #index += 1
    break if fib[-1].digits.size == length
  end
  fib.size
end
=end
def find_fibonacci_index_by_length(length)
  fib = [1, 1]
  loop do
    fib << fib[-1] + fib[-2]
    break if fib[-1].digits.size == length
  end
  fib.size
end

# WORKS EXCEPT FOR 10000! THAT CRASHES IRB
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# DOESN'T REALLY CRASH, IT'S' JUST SUCH A LOOOONG LOOOOOP!
# HOOOOORAY!!!

#=end # MY CODE