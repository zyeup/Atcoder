N = gets.chomp.to_i
K = gets.chomp.to_i
X = gets.chomp.to_i
Y = gets.chomp.to_i

if N >= K
    sum = X * K + Y * (N - K)
else
    sum = X * N
end
puts sum
