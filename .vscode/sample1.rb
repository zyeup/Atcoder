def foo(a, b)
  var1 = "var1"
  var2 = "var2"
  p a, b
end

def bar(c, d)
  foo c * 2, d * 3
end

puts "set breakpoint"
bar 10, 20
puts "set breakpoint"
