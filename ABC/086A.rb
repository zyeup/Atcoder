a, b = gets.chomp.split(" ").map(&:to_i)
result = a * b

if result.odd?
    puts "Odd"
else
    puts "Even"
end

