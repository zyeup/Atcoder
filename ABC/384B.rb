array = []

n, r = gets.chomp.split(" ").map(&:to_i)
n.times do
  array.push(gets.chomp.split(" ").map(&:to_i))
end

# print array

array.each do |arr|
  if arr[0] == 1 && r >= 1600 && r <= 2799
    r += arr[1]
  elsif arr[0] == 2 && r >= 1200 && r <= 2399
    r += arr[1]
  end

  if r < 0
    r = 0
  end
end

puts r
