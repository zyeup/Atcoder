N = gets.chomp.split("")
array = gets.chomp.split(" ").map(&:to_i)
Alice_score = 0
Bob_score = 0
numbers = array.sort.reverse
count = 0

numbers.each do |number|
    if count % 2 == 0
        Alice_score += number
        count += 1
    else
        Bob_score += number
        count += 1
    end
end

puts Alice_score - Bob_score
