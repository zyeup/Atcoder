n = gets.chomp.to_i
array = gets.chomp.split(" ").map(&:to_i).sort
count = 0

array.each_with_index do |val, i|
  target = val * 2
  left = i + 1
  right = array.size - 1
  while left <= right
    mid = (left + right) / 2
    if array[mid] >= target
      right = mid - 1
    else
      left = mid + 1
    end
  end
  count += array.size - left
end

puts count
