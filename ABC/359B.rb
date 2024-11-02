n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i)
count = 1
ans_count = 0

array.each do |i|
    if count + 1 <= array.length
        if i == array[count + 1]
            ans_count += 1
        end
    count += 1
    end
end

puts ans_count










