n = gets.to_i
s = gets.chomp.split("")

result = []
count_1 = 0
count_2 = 0
result_1 = 0

s.each do |str|
  if str == "1"
    #初期化
    result_1 = 0
    count_2 = 0

    count_1 += 1
  elsif str == "/"
    result_1 = count_1

    #初期化
    count_1 = 0
    count_2 = 0
  elsif str == "2"
    #初期化
    count_1 = 0

    count_2 += 1
    if result_1 >= count_2
      result << count_2 * 2 + 1
    end
  end
end

if result.max
  puts result.max
else
  puts 1
end
