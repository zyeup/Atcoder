n = gets.chomp.to_i
array = gets.chomp.split(" ").map(&:to_i).sort!.reverse!
k = gets.chomp.to_i

array.each_with_index do |num, i|
  if i == k - 1
    puts num
  end
end
