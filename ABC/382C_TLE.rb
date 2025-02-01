# 入力の読み込み
n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

# 美食度とその人の番号をペアにしてソート
people = a.each_with_index.map { |ai, i| [ai, i + 1] }.sort_by(&:first)

# 結果を格納する配列
result = []

b.each do |bi|
  # 条件を満たす最初の人を二分探索で探す
  idx = people.bsearch_index { |person| person[0] >= bi }

  if idx.nil?
    # 条件を満たす人がいない
    result << -1
  else
    # 寿司を取る人の番号を記録
    result << people[idx][1]

    # この人をリストから削除
    people.delete_at(idx)
  end
end

# 結果を出力
puts result
