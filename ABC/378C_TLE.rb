n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

# 1回目
# array = []
# location = 1
# location_array = []
# result = []

# a.each do |a_num|
#   array.each do |arr|
#     if a_num == arr[0]
#       location_array.push(arr[1])
#     else
#     end
#   end
#   array.push([a_num, location])
#   if location_array.size == 0
#     result.push(-1)
#   else
#     result.push(location_array[-1])
#   end
#   location_array = []
#   location += 1
# end

# puts result


#2回目
# print a
hash = {}
found_flg = false

a.each_with_index do |num, i|
  if hash.key?(num)
    puts hash[num]
    hash[num] = (i + 1)
    found_flg = true
  end

  if found_flg == false
    puts -1
    hash[num] = (i + 1)
  end

  found_flg = false
end

# print hash
