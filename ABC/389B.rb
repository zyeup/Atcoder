n = gets.chomp.to_i
result = n

(1..n).each do |num|
  result = result / num
  if result == 1
    puts num
    break
  end
end
