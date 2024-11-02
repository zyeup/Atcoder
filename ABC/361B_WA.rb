a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

v = 0

if a[3] > b[0] && a[4] > b[1] && a[5] > b[2]
    v =  (a[3] - b[0]) * (a[4] - b[1]) * (a[5] - b[2])
elsif a[0] < b[3] && a[1] < b[4] && a[2] < b[5]
    v =  (b[3] - a[0]) * (b[4] - a[1]) * (b[5] - a[2])   
end

if v > 0
    puts "Yes"
else
    puts "No"
end
