INF = 20_000_000 # 十分大きな値

# 入力を受け取る
N, K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

# 暫定最小値を格納する変数
min_value = INF

# b をソート
b.sort!

# b に無限大を表す値 (INF) を追加しておく
# これを行うことで、iter = b.end() となる可能性を除外する
b << INF

# a を固定して解く
a.each do |ai|
  # b の中で K - ai 以上の範囲での最小値を示すインデックス
  index = b.bsearch_index { |bi| bi >= K - ai }

  # bsearch_index が nil の場合も考慮
  if index
    val = b[index]
    # min_value と比較する
    min_value = [min_value, ai + val].min
  end
end

puts min_value
