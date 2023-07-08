def triangle(size)
  starString = ''
  loop do
    starString << '*'
    puts starString.rjust(size)
    break if starString.length == size
    
  end
end



=begin
make new string
  right justify size          starString.rjust(size)
  one star on end of string
  loop size number of times
 size.times {|star| puts starString.rjust(size) << '*'}
# =end

FIRST TRY ONLY LOOPS "    *"
def triangle(size)
  starString = ''
  loop do
    puts starString.rjust(size) << '*'
    break if starString.length == size
  end
end
=end