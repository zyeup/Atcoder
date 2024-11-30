n, x= gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
count = 0
array = []

a.each do |num|
  if num >= x
    count += 1
    array.push(count)
  else
    count = 0
  end
end

puts array.max
