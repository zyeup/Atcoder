n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

b.each do |b_num|
  a.each_with_index do |a_num, a_i|
    if b_num >= a_num
        puts (a_i + 1)
        break
    end

    if a_i == a.size - 1
      puts -1
    end
  end
end
