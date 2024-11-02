# m回の入力を受け付ける
n, m = gets.chomp.split(" ").map(&:to_i)
array = []
m.times do
    array.push(gets.chomp.split(" ").map(&:to_i))
end
