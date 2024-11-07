array = gets.chomp.split(" ")

sorted_array = array.sort!
prev = 0
result = []
count = 0
nums = []

sorted_array.each do |num|
  if prev == num
    count += 1
    result.push(count)
    nums.push(prev)
  else
    count = 0
  end
  prev = num
end

if result == []
  puts 0
elsif result == [1]
 puts 1
elsif result == [1,2,3]
  puts 2
elsif result == [1,1] && nums[0] != nums [1]
  puts 2
else
  puts 1
end


# 2回目
# a = gets.chomp.split(" ").map(&:to_i)

# new_a = a.sort!

# num1 = num2 = num3 = num4 = 0

# new_a.each do |num|
#   if num == 1
#     num1 += 1
#   elsif num == 2
#     num2 += 1
#   elsif num == 3
#     num3 += 1
#   elsif num == 4
#     num4 += 1
#   end
# end

# a_times = [].push(num1, num2, num3, num4)
# count = 0

# a_times.each do |num|
#   if num == 2
#     count += 1
#   elsif num == 3
#     count += 1
#   elsif num == 4
#     count += 2
#   end
# end

# puts count
