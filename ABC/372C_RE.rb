n, q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
count = 0
(0..(n - 3)).each do |i|
  count += 1 if s[i..(i + 2)].join == "ABC"
end

q.times do
  x, c = gets.chomp.split
  x = x.to_i - 1
  (x - 2..x).each do |i|
    next if i < 0 || i + 2 >= n
    count -= 1 if s[i..(i + 2)].join == "ABC"
  end

  s[x] = c

  (x - 2..x).each do |i|
    next if i < 0 || i + 2 >= n
    count += 1 if s[i..(i + 2)].join == "ABC"
  end
  puts count
end
