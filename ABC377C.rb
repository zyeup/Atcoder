n, m = gets.chomp.split(" ").map(&:to_i)
chess_located = []
possible_move = []
m.times do
  chess_located.push(gets.chomp.split(" ").map(&:to_i))
end

chess_located.each do |arr|
  possible_move.push(
    [arr[0], arr[1]],
    [arr[0] - 1, arr[1] - 2],
    [arr[0] - 2, arr[1] - 1],
    [arr[0] - 2, arr[1] + 1],
    [arr[0] - 1, arr[1] + 2],
    [arr[0] + 1, arr[1] + 2],
    [arr[0] + 2, arr[1] + 1],
    [arr[0] + 2, arr[1] - 1],
    [arr[0] + 1, arr[1] - 2],
    )
end

uniq_possible_move = possible_move.uniq

# print uniq_possible_move
newArray = uniq_possible_move.delete_if do |arr|
  arr[0] <= 0 || arr[1] <= 0 || arr[0] > n || arr[1] > n
end

puts n * n - newArray.size
