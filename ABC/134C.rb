n = gets.chomp.to_i
array = []
n.times do
  array << gets.chomp.to_i
end
sorted_array = array.sort

max_val = sorted_array[-1]
max_val2 = sorted_array[-2]

if max_val == max_val2
  n.times do
    puts max_val
  end
else
  array.each do |num|
    if num == max_val
      puts max_val2
    else
      puts max_val
    end
  end
end
