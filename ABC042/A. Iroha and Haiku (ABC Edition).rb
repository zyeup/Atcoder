array = gets.chomp.split(" ").map(&:to_i)
count5 = 0
count7 = 0

array.each do |i|
    if i == 5
        count5 += 1
    elsif i == 7
        count7 += 1
    end
end

if count5 == 2 && count7 == 1
    puts "YES"
else
    puts "NO"
end

