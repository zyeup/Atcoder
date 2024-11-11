# input_data = File.read('input.txt').split("\n")
# n = input_data[0].to_i
# a_arr = input_data[1].split(" ").map(&:to_i)
# k = input_data[2].to_i
n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i
count = 0

a_arr.each_with_index do |num, i|
  if num == k
    puts i + 1
    count += 1
  end
end
