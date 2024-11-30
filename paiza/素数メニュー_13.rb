require 'prime'
flg = true

array = [*(2..10**4)].select { |n| (n ** 2).odd? }.map { |n| n ** 2 }
array.each do |num|
  if (num - 2).odd? && (num - 2).prime?
  else
    puts num
    flg = false
  end
end

if flg == true
  puts "paiza's conjecture is correct."
end
