a, b, c, x, y = gets.chomp.split(" ").map(&:to_i)

result = []


result.push(a * x + b * y)

if x >= y
  result.push(2 * c * x)
end

if x <= y
  result.push(2 * c * y)
end

if x <= y
  result.push(2 * c * x + b * (y - x))
end

if x >= y
  result.push(2 * c * y + a * (x - y))
end

puts result.min
