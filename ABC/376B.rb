n, q = gets.chomp.split(" ").map(&:to_i)
instruction = []
q.times do
  instruction.push(gets.chomp.split(" "))
end

leftNum = 1
rightNum = 2
count = 0
num = n.to_i

def check_Clockwise(a, b)
  if a > b
    return a - b   
  elsif a < b
    return b - a
  else
    return 0
  end
end

def check_Num_CCW(n, a, b)
  if a > b
    return n + b - a   
  elsif a < b
    return n + a - b
  else
    return 0
  end
end

instruction.each do |array|

  target = array[1].to_i
  
  if array[0] == "R"
    if (target..rightNum).include?(leftNum) || (rightNum..target).include?(leftNum)
      count += check_Num_CCW(num, rightNum, target)
    else
      count += check_Clockwise(target, rightNum)
    end
    rightNum = target    
  elsif array[0] == "L"
    if (target..leftNum).include?(rightNum) || (leftNum..target).include?(rightNum)
      count += check_Num_CCW(num, leftNum, target)
    else
      count += check_Clockwise(target, leftNum)
    end
    leftNum = target    
  end
end

puts count