n = gets.chomp.to_i
w= []
w = gets.chomp.split(" ").map(&:to_i)
s1 = 0
ans = []

w.each do |i|
    s1 += i
    s = w.sum
    if s1 >= s / 2
        #半分を超える時
        s2 = s - s1
        ans << (s2 - s1).abs
        # 半分を超えない時
        s3 = s1 - i
        s4 = s - s3
        ans << (s4 - s3).abs

        puts ans.min
        exit
    end
end

