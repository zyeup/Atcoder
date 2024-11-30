require 'prime'

n = gets.chomp.to_i
array = []
n.times do
  array.push(gets.chomp.to_i)
end

# print array

array.each do |num|
  if num.prime?
    puts "pass"
  else
    puts "failure"
  end
end
