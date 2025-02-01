n = gets.chomp


case n
when "N" then
  puts "S"
when "E" then
  puts "W"
when "W" then
  puts "E"
when "S" then
  puts "N"
when "NE" then
  puts "SW"
when "NW" then
  puts "SE"
when "SE" then
  puts "NW"
when "SW" then
  puts "NE"
end
