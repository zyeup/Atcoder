n, c = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.split(" ").map(&:to_i)

count = 1
i = 1
prev = nil

(n-1).times do
    if prev
        if t[i] - prev >= c
            count += 1
            prev = nil
        end            
    elsif t[i] - t[i-1] >= c
        count += 1
    else
        prev = t[i-1]
    end
    i += 1
end

puts count