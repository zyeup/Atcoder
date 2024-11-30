n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)


match_count = 0
a.each_with_index do |num, i|
  if num == b[match_count]
    match_count += 1
  end
  if match_count == m
    puts "Yes"
    break
  end
end

puts "No" if match_count != m
