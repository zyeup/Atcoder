# n = gets.to_i
# array_n = []
# array_q = []
# result = []
# sum = 0

# n.times do
#   array_n.push(gets.chomp.split(" ").map(&:to_i))
# end
# q = gets.to_i
# q.times do
#   array_q.push(gets.chomp.split(" ").map(&:to_i))
# end

# # print array_n
# # print array_q

# array_q.each do |arr_q|
#   q = array_n[arr_q[0] - 1][0]
#   r = array_n[arr_q[0] - 1][1]
#   d = arr_q[1]
#   sum = q + d
#   d_t_sum = r
#   # puts q
#   # puts r
#   # puts d
#   if d == r
#     result.push(d)
#   else
#     while sum > d_t_sum
#       d_t_sum += q
#     end
#     result.push(d_t_sum - q)
#   end
# end

# puts result


#2回目
n = gets.to_i
array_n = []
array_q = []
n.times do
  array_n.push(gets.chomp.split(" ").map(&:to_i))
end
q = gets.to_i
q.times do
  array_q.push(gets.chomp.split(" ").map(&:to_i))
end

# print array_n
# print array_q

array_q.each do |arr|
  q = array_n[arr[0] - 1][0]
  r = array_n[arr[0] - 1][1]
  if arr[1] <= r
    puts r
  elsif arr[1] % q == r
    syou = (arr[1] - r) / q
    puts q * syou + r
  else
    syou = (arr[1] - r) / q
    puts q * (syou + 1) + r

  end
end
