n = gets.chomp.to_i
k = gets.chomp.split(" ").map(&:to_i)

result_min = 10 ** 20
avg = k.sum.to_f / 2

(0...(1 << n)).each do |bit|
  sub_sum = 0
  n.times do |i|
    if bit & (1 << i) != 0
      sub_sum += k[i]
    end
  end

  if sub_sum >= avg
    result_min = [result_min, sub_sum].min
  end
end

puts result_min
