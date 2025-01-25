n, m = gets.split.map(&:to_i)
array = []
m.times do
  array << gets.split.map(&:to_i)
end
first_max = -1
last_min = 10 ** 6

array.each do |arr|
  first_max = [first_max, arr[0]].max
  last_min = [last_min, arr[1]].min
end

if last_min - first_max >= 0
  puts last_min - first_max + 1
else
  puts 0
end
