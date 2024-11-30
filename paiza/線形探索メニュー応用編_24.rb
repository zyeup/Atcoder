n, m, k, x = gets.chomp.split(" ").map(&:to_i)
array = []
n.times do
  array.push(gets.chomp.split(" ").map(&:to_i))
end

print array
