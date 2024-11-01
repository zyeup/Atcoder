w = gets.chomp.split("")
s = w.join

w.each do |i|
    ans = s.count(i)
    if ans % 2 == 1
        puts "No"
        exit
    end
end

puts "Yes"
