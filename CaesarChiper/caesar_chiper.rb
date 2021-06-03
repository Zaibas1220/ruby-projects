def encrypting(string, shift, result = '')
  string.each_char do |char|
    base = char.ord < 91 ? 65 : 97

    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      translate = (((char.ord - base) + shift) %26) + base
      result += translate.chr
    else
      result += char
    end
  end

  result
end

puts encrypting("Bilbo is Gay",12)
puts encrypting("Bilbo is Gay",-5)
puts encrypting("HellO, WorlD!", 7)