r, g, b = gets.split(" ").map(&:to_i)
c = gets.chomp

def min(a, b)
    (a <= b) ? a : b
end

if c == "Red"
    puts min(g, b)
elsif c == "Green"
    puts min(r, b)
elsif c == "Blue"
    puts min(r, g)
end
