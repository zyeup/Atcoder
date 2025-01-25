a = gets.chomp.split(" ").map(&:to_i)
sorted = a.sort
array = []

a.each_with_index do |num, i|
  if num != sorted[i]
    array << i
  end
end

if array.size == 2
  if array[0] + 1 == array [1]
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end
