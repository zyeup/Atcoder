n, m = gets.chomp.split(" ").map(&:to_i)
x_array = gets.chomp.split(" ").map(&:to_i)
a_array = gets.chomp.split(" ").map(&:to_i)
sum = 0
prev = 0
difference = 0
times_result = 0
errorflg = false
error = -1

# print x_array
# print a_array

x_array.each_with_index do |num, i|
  if sum < (num - 1)
    errorflg = true
    break
  else
    #最初は要確認
    if i != 0
      difference = num - prev - 1
      times_result += (0..difference).sum
    end


    sum += a_array[i]

      # 最後の要確認
    if i == x_array.size - 1
      if sum >= n
      times_result += (0..(n - num)).sum
      else
        errorflg = true
      end
    end

    #後処理
      prev = num
  end
end

if errorflg == true
  puts error
else
  puts times_result
end
