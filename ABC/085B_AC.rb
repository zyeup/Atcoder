# 整数の入力
n = gets.to_i
ans = n.times.map{gets.to_i}
# 「何段積み上げられるか」を出力
# uniqメソッド：配列から重複を取り除く
p ans.uniq.length
