a, b, c, x, y = gets.chomp.split(" ").map(&:to_i)

result = []

#  a < c < bの場合
if x > y && b > c && a < c
  result.push(c * 2 * y + a * (x-y))
end

# b < c < aの場合
if x < y && a > c && b < c
  result.push(c * 2 * x + b * (y-x))
end


result.push(a * x + b * y)


# cが極端に小さい場合
if x >= y
  result.push(c * 2 * x)
end

if y >= x
  result.push(c * 2 * y)
end

puts result.min
