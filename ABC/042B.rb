N,L = gets.chomp.split(" ").map(&:to_i)

array = N.times.map{gets.chomp}

puts array.sort.join
