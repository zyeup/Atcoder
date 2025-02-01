n, q = gets.chomp.split(" ").map(&:to_i)
pigeon_pos = (1..n).to_a

pigeon_nest = Array.new(n + 1, 0)
result = 0

(1..n).each do |i|
  pigeon_nest[i] = 1
end
multi_pigeon_count = pigeon_nest.count { |x| x >= 2 }

q.times do
  query = gets.chomp.split(" ").map(&:to_i)

  if query[0] == 1
    pigeon = query[1]
    nest = query[2]

    current_nest = pigeon_pos[pigeon - 1]

    if current_nest != nest
      pigeon_nest[current_nest] -= 1
      if pigeon_nest[current_nest] == 1
        result -= 1
      end

      pigeon_nest[nest] += 1
      if pigeon_nest[nest] == 2
        result += 1
      end
      pigeon_pos[pigeon - 1] = nest
    end
  else
    puts result
  end
end
