array = []
# 行
row = 1
# 列
column = 1

locate_row = []

locate_column = []

none_row = []

none_column = []

8.times do
  array.push(gets.chomp.split(""))
end

array.each do |str|
  str.each do |s|
    if s == "#"
      locate_row.push(row)
      locate_column.push(column)
    end
    column += 1
  end
  #カラムをリセット
  column = 1
  row += 1
end

sorted_locate_row = locate_row.sort!
sorted_locate_column = locate_column.sort!


#(1~8)の範囲内にない数字を探す
(1..8).each do |num|
  if !sorted_locate_row.include?(num) 
    none_row.push(num)
  end
end

(1..8).each do |num|
  if !sorted_locate_column.include?(num) 
    none_column.push(num)
  end
end

puts none_row.size * none_column.size