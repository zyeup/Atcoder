puts "Hello, World!"

def fizz_buzz(a)
    if a % 15 == 0
        "Fizz Buzz"
    elsif a % 3 == 0
        "Fizz"
    elsif a % 5 == 0
        "Buzz"
    else
        a.to_s
    end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)
