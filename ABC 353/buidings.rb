N = gets.to_i
input = gets.split(" ").map(&:to_i)

if input.max == input[0]
    puts -1
else
    # 最初にinput[0]を超える値を出力
    input.each do |num|
        count = 0
        if input[0] < num
            lineFromLeft = count + 2
            puts lineFromLeft
            return
        end
        count += 1
    end
end

