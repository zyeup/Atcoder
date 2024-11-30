s = gets.chomp.split("|")

# print s
result = []

s.each do |str|
  result.push(str.count("-"))
end

result.delete_at(0)
puts result.join(" ")
