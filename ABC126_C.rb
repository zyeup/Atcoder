N,K = gets.chomp.split(" ").map(&:to_i)

#0が表、1が裏
probability = 1
ans = 0
count = 0

(1..N).each do |i|

    probability *= 1.0000000000 / N
    score = i

    while K-1 >= score do
        score *= 2
        probability *= 0.5000000000
    end

    ans += probability
    probability = 1

end

puts ans
