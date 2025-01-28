require 'set'

# 入力の読み込み
n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

# 美食度とその人の番号をペアにしてソート
people = a.each_with_index.map { |ai, i| [ai, i + 1] }.sort

# 平衡二分探索木を使う
available_people = SortedSet.new((0...n).to_a)

# 結果を格納する配列
result = []

b.each do |bi|
  # 取れる人を二分探索で見つける
  idx = available_people.bsearch { |i| people[i][0] >= bi }

  if idx.nil?
    # 取れる人がいない
    result << -1
  else
    # 寿司を取る人を記録
    result << people[idx][1]

    # この人は寿司を取ったので利用可能リストから削除
    available_people.delete(idx)
  end
end

# 結果を出力
puts result
