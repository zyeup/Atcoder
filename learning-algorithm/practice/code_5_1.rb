#2 9 4 5 1 6 10
h = gets.chomp.split(" ").map(&:to_i)
n = h.size

INF = Float::INFINITY
dp = Array.new(h.size, INF)
dp[0] = 0

(1..n-1).each do |i|
  if i == 1
    dp[i] = dp[i - 1] + (h[i] - h[i - 1]).abs
  else
    dp[i] = [
      dp[i - 1] + (h[i] - h[i - 1]).abs,
      dp[i - 2] + (h[i] - h[i - 2]).abs
    ].min
  end
end

print dp
