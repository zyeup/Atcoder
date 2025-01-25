S = gets.chomp
N = S.size

# N-1 箇所の隙間に「+」を入れるかどうかをすべて試す
res = (0...(1 << (N - 1))).sum do |bit|
  tmp = 0
  sum = 0

  N.times do |i|
    tmp = tmp * 10 + S[i].to_i
    if i == N - 1 || bit[i] == 1
      sum += tmp
      tmp = 0
    end
  end

  sum
end

puts res
