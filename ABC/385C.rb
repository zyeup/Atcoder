n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)
max_count = 0

(1..n).each do |step|
  (0..n).each do |start|
    count = 1
    current = h[start]

    index = start + step
    while index < n
      if h[index] == current
        count += 1
      else
        break
      end
      index += step
    end
    max_count = [max_count, count].max
  end
end


puts max_count
