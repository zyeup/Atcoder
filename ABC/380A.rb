n = gets.chomp.split("").map(&:to_i)
count_1 = 0
count_2 = 0
count_3 = 0

n.each do |num|
  if num == 1
    count_1 += 1
  elsif num == 2
    count_2 += 1
  elsif num == 3
    count_3 += 1
  end
end

if count_1 == 1 && count_2 == 2 && count_3 == 3
  puts "Yes"
else
  puts "No"
end
