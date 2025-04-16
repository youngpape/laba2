def pangram?(sentence)
  letters = Set.new

  sentence.downcase.each_char do |char|
    if ('a'..'z').include?(char)
      letters.add(char)
    end
  end

  letters.size == 26
end

require 'set'

print "Введите строку: "
input = gets.chomp

if pangram?(input)
  puts "Вывод: true (является панграммой)"
else
  puts "Вывод: false (не является панграммой)"
end
