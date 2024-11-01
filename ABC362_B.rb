a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

array = [(a[0] - b[0])**2 + (a[1] - b[1])**2 , (b[0] - c[0])**2 + (b[1] - c[1])**2 , (c[0] - a[0])**2 + (c[1] - a[1])**2 ]
sorted_array = array.sort

if sorted_array[2] == sorted_array[0] + sorted_array[1]
    puts "Yes"
else
    puts "No"
end


