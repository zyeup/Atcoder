k = gets.to_i
s = gets.chomp.split("")
t = gets.chomp.split("")

s_rev = s.reverse
t_rev = t.reverse
count = 0
index = 0
index_rev = 0

if (s.size - t.size).abs >= 2
  puts "No"
elsif s.size == t.size + 1
  s.each_with_index do |str, i|
    if str == t[i]
      next
    else
      index = i
      break
    end
  end
  s_rev.each_with_index do |str, i|
    if str == t_rev[i]
      next
    else
      index_rev = i
      break
    end
  end
  if s.size - 1 - index <= index_rev
    puts "Yes"
  else
    puts "No"
  end
elsif t.size == s.size + 1
  t.each_with_index do |str, i|
    if str == s[i]
      next
    else
      index = i
      break
    end
  end
  t_rev.each_with_index do |str, i|
    if str == s_rev[i]
      next
    else
      index_rev = i
      break
    end
  end
  if t.size - 1 - index <= index_rev
    puts "Yes"
  else
    puts "No"
  end
else
  (s.size).times do |num|
    if s[num] == t[num]
      next
    else
      count += 1
    end
  end
  if count <= 1
    puts "Yes"
  else
    puts "No"
  end
end
