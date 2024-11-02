S = gets.chomp.split("")
array = []

S.each do |i|
    if i == "0"
        array.push(0)
    elsif i == "1"
        array.push(1)
    elsif i == "B"
        array.delete_at(array.length-1)
    end
end

puts array.join


