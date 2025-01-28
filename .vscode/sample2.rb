def foo(a, b)
  var1 = "var1"
  var2 = "var2"
  p a, b
end

def bar(c, d)
  foo c * 4, d * 5
end

puts "set breakpoint"
bar 110, 30
puts "set breakpoint"
