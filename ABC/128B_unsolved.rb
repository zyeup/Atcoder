n = gets.to_i

# レストランの情報を配列に格納
restaurants = []
n.times do |i|
  s, p = gets.split
  restaurants << { index: i + 1, city: s, score: p.to_i }
end

# 市名が辞書順で早いものから、同じ市内で点数が高い順にソート
sorted_restaurants = restaurants.sort_by { |r| [r[:city], -r[:score]] }

# ソートした結果を出力
sorted_restaurants.each { |r| puts r[:index] }
