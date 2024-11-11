n = gets.chomp.to_i
a_array = gets.chomp.split(" ").map(&:to_i)
q_array = []
q = gets.chomp.to_i
q.times do
  q_array.push(gets.chomp.split(" ").map(&:to_i))
end
a_array_sorted = a_array.sort!
# result_array = []

# print n
# print a_array_sorted
# print q_array

q_array.each do |q_arr|
  result_a = a_array_sorted.bsearch_index { |x| x >= q_arr[0] }
  if result_a == nil
    puts 0
    next
  end
  result_b = a_array_sorted.bsearch_index { |x| x > q_arr[1] }
  if result_b == nil
    # 下の計算に合わせて-1はせずそのまま
    result_b = a_array_sorted.size
  end
    puts (result_b - 1) - result_a + 1
end

# q_array.each_with_index do |q_arr, i|
#   result_array[i].push(a_array_sorted.bsearch_index { |x| x > q_arr[1] } - 1)
# end

# print result_array

# result_array.each do |result_arr|
#   puts result_arr[1] - result_arr[0] + 1
# end
