n, d = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("")
count = 0

s.each do |str|
  if str == "@"

    count += 1
  end
end

puts (s.size - count) + d
