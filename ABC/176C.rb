n = gets.chomp.to_i
array = gets.chomp.split(" ").map(&:to_i)
sum = 0
maxA = array[0]

array.each do |num|
  if maxA > num
    sum += maxA - num
  else
    maxA = num
  end
end

puts sum
