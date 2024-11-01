r,D,x2000 = gets.chomp.split(" ").map(&:to_i)
xi = 0
xi_before = x2000
ans = []

10.times do
    xi = r * xi_before - D
    ans.push(xi)
    xi_before = xi
end

puts ans
