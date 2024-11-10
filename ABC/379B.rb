n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")

prev_array = []
k_count = 0
result_count = 0

s.each do |num|

  #もしnumがXなら配列を初期化
  if num == "X"
    prev_array = []
    k_count = 0
    # puts "num==X"
    next
  end

  #前回の文字と一緒なら配列にpush
  if num == prev_array[-1] || prev_array.size == 0
    prev_array.push(num)
    k_count += 1
    # puts "k_count += 1"
  elsif num != prev_array[-1]
    prev_array = []
    # puts "ここでたらバグ"
  end

  if k_count == k
    result_count += 1
    prev_array = []
    k_count = 0
    # puts "result_count += 1"
  end
end

puts result_count
