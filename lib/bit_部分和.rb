# 入力受け取り
n, w = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# bit は 2^n 通りの部分集合全体を動く
exist = false
(0...(1 << n)).each do |bit|
  sum = 0  # 部分集合に含まれる要素の和
  n.times do |i|
    # i 番目の要素 a[i] が部分集合に含まれているかどうか
    if bit & (1 << i) != 0
      sum += a[i]
    end
  end

  # sum が w に一致するかどうか
  if sum == w
    exist = true
  end
end

# 結果の出力
if exist
  puts "Yes"
else
  puts "No"
end
