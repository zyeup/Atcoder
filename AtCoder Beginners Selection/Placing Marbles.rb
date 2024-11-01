input = gets.chomp.split("").map(&:to_i)
count = 0

input.each do |i|
    if i == 1
        count += 1
    end
end

puts count
