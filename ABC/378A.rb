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
