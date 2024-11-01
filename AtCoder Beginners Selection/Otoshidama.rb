N,Y = gets.chomp.split(" ").map(&:to_i)

(0..N).each do |x|
    (0..N).each do |y|
        z = N - (x + y)
        break if z < 0

        sum = 10000 * x + 5000 * y + 1000 * z
        if sum == Y
            puts "#{x} #{y} #{z}"
        exit
        end
    end
end


puts "-1 -1 -1"

