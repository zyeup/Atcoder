N, A, B = gets.chomp.split(" ").map(&:to_i)
sum = 0

(0..N).each do |i|
    result = i % 10 + i / 10 % 10 + i / 100 % 10 + i / 1000 % 10 + i / 10000 % 10
    if result >= A && result <= B
        sum += i
    end
end

p sum


