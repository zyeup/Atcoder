n = gets.chomp.to_i
arrayA = gets.chomp.split(" ").map(&:to_i)
arrayB = gets.chomp.split(" ").map(&:to_i)
count = []
error = -1

until arrayB.empty? do
  if arrayA.max <= arrayB.max
    arrayA.delete(arrayA.max)
    arrayB.delete(arrayB.max)
  else
    count.push(arrayA.max)
    arrayA.delete(arrayA.max)
  end
  if count.size > 1
    puts error
    break
  end
end

if count.size == 1
  puts count[0]
elsif count.size < 1
  puts arrayA[0]
end
