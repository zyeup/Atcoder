#入力データ
# 6 9
# 2 3
# 1 2
# 3 6
# 2 1
# 1 3
# 5 85


N, W = gets.split.map(&:to_i)
items = Array.new(N) { gets.split.map(&:to_i) }

dp = Array.new(N + 1) { Array.new(W + 1, 0) }

N.times do |i|
  weight, value = items[i]
  (0..W).each do |w|
    # i 番目の品物を選ぶ場合
    if w - weight >= 0
      dp[i + 1][w] = [dp[i + 1][w], dp[i][w - weight] + value].max
    end
    # i 番目の品物を選ばない場合
    dp[i + 1][w] = [dp[i + 1][w], dp[i][w]].max
  end
end

# 最適値の出力
puts dp[N][W]

# print dp
