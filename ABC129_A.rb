P,Q,R = gets.chomp.split(" ").map(&:to_i)
array = []

array.push(P,Q,R)
array_sorted = array.sort

puts array_sorted[0]+array_sorted[1]

