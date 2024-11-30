require 'prime'
array = gets.chomp.split(" ").map(&:to_i)

puts array.inject(:gcd)
