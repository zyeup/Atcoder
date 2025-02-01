n, m = gets.chomp.split(" ").map(&:to_i)
s = []
t = []
n.times do
  s << gets.chomp.split("")
end
m.times do
  t << gets.chomp.split("")
end

(n - m + 1).times do |si|
  (n - m + 1).times do |sj|
    match = true

    m.times do |ti|
      m.times do |tj|
        if s[si + ti][sj + tj] != t[ti][tj]
          match = false
          break
        end
      end
      break unless match
    end

    if match
      puts "#{si + 1} #{sj + 1}"
      exit
    end
  end
end
