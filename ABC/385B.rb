h, w, x, y = gets.chomp.split(" ").map(&:to_i)
a, b = x, y
map = []
h.times do
  map << gets.chomp.split("")
end
t = gets.chomp.split("")
count = 0

def move_location(str, a, b)
  case str
  when "U"
    a -= 1
  when "D"
    a += 1
  when "L"
    b -= 1
  when "R"
    b += 1
  end
  [a, b]
end

t.each do |str|

  a, b = move_location(str, a, b)
  case map[a-1][b-1]
  when "."
    x, y = a, b
  when "@"
    x, y = a, b
    count += 1
    map[x-1][y-1] = "."
  when "#"
    a, b = x, y
  end

end

puts "#{x} #{y} #{count}"
