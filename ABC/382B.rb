n, d = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("").reverse
count = 0
new_s = []
result = []
each_count = 0


s.each do |str|
  if str == "@"
    new_s.push(".")
    count += 1
    each_count += 1
  elsif str == "."
    new_s.push(".")
    each_count += 1
  end

  if count == d
    result = [*new_s, s[(each_count)..(s.size - 1)].reverse]
    break
  end
end

puts result.reverse.join("")
