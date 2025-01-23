
#bit演算
bit = cnt.to_s(2).rjust(len,'0').split("").map(&:to_i)

p [1,2,3].zip([4,5,6], [7,8,9])
# => [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
