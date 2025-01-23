n, c1, c2 = gets.chomp.split(" ")
s = gets.chomp.split("")
array = []

s.each do |str|
  if c1 != str
    array.push(c2)
  else
    array.push(str)
  end
end

puts array.join("")
