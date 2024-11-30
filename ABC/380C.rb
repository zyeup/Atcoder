n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
#1が続いた時のindexを格納
count_index = []
#1の塊が何個目なのかを格納
k_count = []


# puts n
# puts k
# puts s
s.each_with_index do |num, i|
  if num == 0
    #直前の1のかたまりの数を計算をする
    if count_index.size != 0
      k_count.push(count_index.size)
    end
    k_count.push(0)
    count_index = []
  elsif num == 1 && i == (n - 1)
    count_index.push(i)
    k_count.push(count_index.size)
  elsif num == 1
    count_index.push(i)
  end
end

new_array = []
count = 0
count_0 = 0
# print k_count
k_count.each_with_index do |num, i|

  if num == 0
    if count == k - 1
      count_0 += 1
    else
      new_array.push(0)
    end
  else
    num.times do
      new_array.push(1)
    end
    count += 1
    if count == k
      count_0.times do
        new_array.push(0)
      end
      count = 10**20
    end
  end

  if count == k - 1 && i == (k_count.size - 1)
    count_0.times do
      new_array.push(0)
    end
    count = 10**20
  end
end

puts new_array.join("")
