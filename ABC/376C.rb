n = gets.chomp.to_i
arrayA = gets.chomp.split(" ").map(&:to_i)
arrayB = gets.chomp.split(" ").map(&:to_i)
count = []
error = -1
sorted_ArrayA = arrayA.sort.reverse!
sorted_ArrayB = arrayB.sort.reverse!

a_i = 0
b_i = 0

while b_i <= sorted_ArrayB.size - 1
  if sorted_ArrayA[a_i] > sorted_ArrayB[b_i]
    count.push(sorted_ArrayA[a_i])
    b_i -= 1
  end
  if count.size > 1
      puts error
      break
  end
  a_i += 1
  b_i += 1
end

if count.size == 1
  puts count[0]
elsif count.size < 1
  puts sorted_ArrayA[-1]
end
