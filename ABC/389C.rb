n = gets.chomp.to_i
array = []
n.times do
  array << gets.split.map(&:to_i)
end

queue = []
sum_length = [0]
delete_sum = 0
delete_count = 0
array.each do |arr|

  if arr[0] == 1
    queue << arr[1]
    sum_length << (sum_length.last + arr[1])

  elsif arr[0] == 2
    delete_sum += queue.shift
    delete_count += 1

  elsif arr[0] == 3
    sum_length.shift(delete_count)
    delete_count = 0
    puts (sum_length[arr[1] - 1] - delete_sum)
  end

  # print "#{sum_length}"
end
