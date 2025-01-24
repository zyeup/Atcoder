a, b, c, d, e, f = gets.split.map(&:to_i)
g, h, i, j, k, l = gets.split.map(&:to_i)

x_overlap = [0, [d, j].min - [a, g].max].max
y_overlap = [0, [e, k].min - [b, h].max].max
z_overlap = [0, [f, l].min - [c, i].max].max

if x_overlap > 0 && y_overlap > 0 && z_overlap > 0
  puts "Yes"
else
  puts "No"
end
