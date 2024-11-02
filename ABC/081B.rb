N = gets
input = gets.chomp.split(" ").map(&:to_i)
count = 0 
array = []

input.each do |i|
    while i % 2 == 0
        i = i / 2
        count += 1
    end
    array.push(count)
    count = 0
end

p array.min

