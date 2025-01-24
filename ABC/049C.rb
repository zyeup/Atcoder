S=gets.chomp
s = S.gsub("eraser","").gsub("erase","").gsub("dreamer","").gsub("dream","")
puts s.size == 0? "YES" : "NO"
