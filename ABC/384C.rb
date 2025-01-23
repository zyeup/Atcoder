array = gets.chomp.split(" ").map(&:to_i)
str_array = ["A", "B", "C", "D", "E"]
combinations = []
str_combinations = []
5.times do |i|
  array.combination(i+1) { |n| combinations << n }
end

sum_array = []
join_array = []

combinations.each do |arr|
  sum_array.push(arr.sum)
end

# print sum_array

5.times do |i|
  str_array.combination(i+1) { |n| str_combinations << n }
end

str_combinations.each do |arr|
  join_array.push(arr.join(""))
end


result = sum_array.zip(join_array)
# print result

result.sort_by! { |arr| [-arr[0], arr[1]] }

result.each do |arr|
  puts arr[1]
end
