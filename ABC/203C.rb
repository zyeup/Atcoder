n, k = gets.chomp.split(" ").map(&:to_i)
array = []
n.times do
    array.push(gets.chomp.split(" ").map(&:to_i))
end
moved = k
sorted = array.sort!

sorted.each do |arr|
  if moved >= arr[0]
    moved += arr[1]
  end
end

puts moved
