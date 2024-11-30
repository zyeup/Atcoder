n, m, k, x = gets.chomp.split(" ").map(&:to_i)
array = []
n.times do
  array.push(gets.chomp.split(",").map(&:to_i))
end
array.each do |arr|
  if arr[k - 1] >= x
    puts arr.join(",")
  end
end
