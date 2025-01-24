n = gets.chomp.to_i
array = []
n.times do
  array.push(gets.chomp.to_i)
end
array_dup = array.dup

array.each_with_index do |num, i|
  tmp_array = array_dup.dup
  tmp_array.delete_at(i)
  puts tmp_array.sort![-1]
end
