n =gets.to_i
arrays = []
count = 0
n.times do
    s = gets.chomp.split(" ").map(&:to_i)
    arrays << s
end

arrays.each do |array|
    (array.first..array.last).each do |num|
        count += num        
    end
end

puts count

