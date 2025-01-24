n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

hash = {}
found_flg = false

a.each_with_index do |num, i|
  if hash.key?(num)
    puts hash[num]
    hash[num] = (i + 1)
    found_flg = true
  end

  if found_flg == false
    puts -1
    hash[num] = (i + 1)
  end

  found_flg = false
end

# print hash
