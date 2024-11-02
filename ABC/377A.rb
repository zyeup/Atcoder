s = gets.split("")

a = 0
b = 0
c = 0

s.each do |s|
  if s == "A"
    a += 1
  elsif s == "B"
      b += 1
  elsif s == "C"
      c += 1
  end
end


if a == b && a == c && c== a && a == 1
  puts "Yes"
else
  puts "No"
end
