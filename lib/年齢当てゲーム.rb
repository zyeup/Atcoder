array = [*1..100]

count = 0
left = 0
right = array.size - 1

puts "年齢当てゲームを開始します！"
while left <= right
  mid = (left + right) / 2
  puts "あなたの年齢は#{array[mid]}歳以下ですか？ (yes/no)"
  answer = gets.chomp.downcase

  if answer == "yes"
    right = mid - 1
  else
    left = mid + 1
  end
  count += 1
end

puts "あなたの年齢は#{array[left]}歳ですね！ #{count}回の質問で当てました！！"
