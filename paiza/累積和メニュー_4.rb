n, x, y = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = [0]

a.each_with_index do |num, i|
  b.push(b[i] + a[i])
end

puts (b[]-b[])
