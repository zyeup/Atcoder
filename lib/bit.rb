# 5
a = 0b101

# 3
b = 0b011

result = a & b
puts result.to_s(2).rjust(3, '0')
