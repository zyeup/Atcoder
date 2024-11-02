s = gets.chomp.split("")
countflg = false
count = 0
countArray = []
s_i = 0
array_a = []
array_z = []

s.each do |str|
  if str == "A"
    array_a.push(s_i)
  end
  if str == "Z"
    array_z.push(s_i)
    countArray.push(count)
  end
  if countflg == true
    count += 1
  end
  s_i += 1
end

puts array_z.max - array_a.min + 1
