n, d = gets.chomp.split(" ").map(&:to_i)
array = []
n.times do
  array << gets.chomp.split(" ").map(&:to_i)
end

result = []

(1..d).each do |num|
  array.each do |arr|
    result << arr[0] * (arr[1] + num)
  end
  puts result.max
end
