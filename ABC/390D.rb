n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
count = 0
bit_array = []

combin_a = a.combination(2).to_a
sum = 0
print combin_a
combin_a.each do


  a.each do |num|
    bit_array << num.to_s(2).rjust((10 ** 17).to_s(2).length, '0')
  end

  bit_array.each do |bit|
    sum = sum ^ bit.to_i
  end

  result << sum
end
