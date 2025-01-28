#2 9 4 5 1 6 10
h = gets.split.map(&:to_i)
n = h.size

INF = Float::INFINITY
dp = Array.new(n, INF)
dp[0] = 0

(0..n-1).each do |i|
  if i + 1 < n
    min = [dp[i + 1], dp[i] + (h[i] - h[i + 1]).abs].min
    dp[i + 1] = min
  end
  if i + 2 < n
    min = [dp[i + 2], dp[i] + (h[i] - h[i + 2]).abs].min
    dp[i + 2] = min
  end
end

puts dp[n - 1]
