value = rand(1..100)
array = [*1..100].map(&:to_i)

count = 0

left = 0
right = array.size - 1
while left <= right
  mid = (left + right) / 2
  if value <= array[mid]
    right = mid - 1
  elsif value > array[mid]
    left = mid + 1
  end
  count += 1
end

puts "最初に生成された数字は#{value}です！"
puts "あなたの年齢は#{array[left]}歳ですね！ #{count}回の計算で求めました！！"
