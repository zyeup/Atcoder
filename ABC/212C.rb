n, m= gets.chomp.split(" ").map(&:to_i)
a_array = gets.chomp.split(" ").map(&:to_i).sort!
b_array1 = gets.chomp.split(" ").map(&:to_i).sort!
b_array2 = b_array1.dup.reverse!
result = []
number = 10 ** 24

# print n
# print m
# print a_array
# print b_array
a_array.each do |num|
  result_max = b_array1.bsearch {|x| x >= num} || number
  result_min = b_array2.bsearch {|x| x <= num} || -number
  result.push([(result_max - num).abs, (result_min - num).abs].min)
end

puts result.min
