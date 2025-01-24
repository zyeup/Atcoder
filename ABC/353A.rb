n = gets.chomp.to_i
h = gets.split.map(&:to_i)
result = nil

h.each_with_index do |num, i|

  if h[0] < num
    result =  i+1
    break
  end

end

if result
  puts result
else
  puts -1
end
