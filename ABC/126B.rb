S = gets.chomp.split("")

former = (S[0] + S[1]).to_i
latter = (S[2] + S[3]).to_i

if (01 <= former && former <= 12) && (01 <= latter && latter <= 12)
    puts "AMBIGUOUS"
elsif (01 <= former && former <= 12) && (latter == 0 || (13 <= latter && latter <= 99))
    puts "MMYY"
elsif (former == 0 || (13 <= former && former <= 99)) && (01 <= latter && latter <= 12)
    puts "YYMM"
else
    puts "NA"
end
    