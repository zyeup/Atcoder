N,K = gets.chomp.split(" ")
S = gets.chomp.split("")

S[K.to_i - 1] = S[K.to_i - 1].downcase
puts S.join
