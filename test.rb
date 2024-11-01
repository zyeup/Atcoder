n = gets.to_i

fruits = []
n.times do |i|
  s, p = gets.split
  fruits << { fruit: s, score: p.to_i }
end

sorted_restaurants = fruits.sort_by do |r|
   [r[:fruit], -r[:score]] 
end

puts sorted_restaurants
