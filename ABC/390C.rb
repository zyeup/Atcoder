h, w = gets.chomp.split(" ").map(&:to_i)
s = []
h.times do
  s << gets.chomp.split("")
end

i_min = 10000
j_min = 10000
i_max = 0
j_max = 0

s.each_with_index do |arr, i|
  arr.each_with_index do |str, j|
    if str == "#"
      if i_min >= i
        i_min = i
      end
      if i_max <= i
        i_max = i
      end
      if j_min >= j
        j_min = j
      end
      if j_max <= j
        j_max = j
      end
    end
  end
end

ok = true
i_min.upto(i_max) do |i_num|
  j_min.upto(j_max) do |j_num|
    if s[i_num][j_num] == "."
      ok = false
    end
  end
end

if ok
  puts "Yes"
else
  puts "No"
end
