N = gets.chomp.to_i
t_old = x_old = y_old = 0

N.times do
    t, x, y = gets.chomp.split(" ").map(&:to_i)
    t_diff = (t - t_old).abs
    dist = (x - x_old).abs + (y - y_old).abs

    if (t + x + y) % 2 != 0 || t_diff < dist #<-条件追加
        puts 'No'
        exit
      end

    t_old = t
    x_old = x
    y_old = y

end

puts "Yes"




