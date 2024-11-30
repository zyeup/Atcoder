require 'prime'
a, b, c = gets.chomp.split(" ").map(&:to_i)

if (a+b).prime? || (b+c).prime? || (c+a).prime?
  puts "Yes"
else
  puts "No"
end
