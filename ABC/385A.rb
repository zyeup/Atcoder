a = gets.chomp.split(" ").map(&:to_i).sort!.reverse!


if a[0] == a[1] + a[2]
  puts "Yes"
else
  if a[0] == a[1] && a[1] == a[2]
    puts "Yes"
  else
    puts "No"
  end
end
