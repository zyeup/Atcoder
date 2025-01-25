n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ok = true

r = a[1].rationalize / a[0].rationalize
a.each_with_index do |num, i|
  if num == a.last
    break
  end
  if num * r != a[i+1]
    ok = false
    break
  end
end

if ok
  puts "Yes"
else
  puts "No"
end
