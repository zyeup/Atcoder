n =gets.to_i
array = []
count = 0
n.times do
    s = gets.chomp
    array << s
end

array.each do |str|
    if str == "Takahashi"
        count += 1
    end
end

puts count
