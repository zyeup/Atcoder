n = gets.chomp.to_i
array = []
n.times do
  array.push(gets.chomp.to_i)
end

puts array.inject(:lcm)
