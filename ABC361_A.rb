n, k, x = gets.split(" ").map(&:to_i)
array = gets.chomp.split(" ").map(&:to_i)

array.insert(k, x)

puts array.join(" ")
