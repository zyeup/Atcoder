n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
count = 0

a.each_with_index do |num, i|
  if i < 1 || i == (n - 1)
    next
  end

  if (a[i - 1] < num &&  num > a[i + 1]) || (a[i - 1] > num &&  num < a[i + 1])
    count += 1
  end
end

puts count
