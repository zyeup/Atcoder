n, x, k= gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
count = 0
array = []

a.each do |num|
  if num == x
    count += 1
  else
    count = 0
  end
  if count == k
    array.push(count)
    count -= 1
  end
end

puts array.count(k)
