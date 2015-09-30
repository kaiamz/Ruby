#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def to_words s
  s.split(/[\W]+/)

end

def starts_with_vowel s
  #FIXME Errors on an empty string
  #w{a e i o u} is a quick way of writing ['a', 'e', 'i', 'o', 'u']
  %w{a e i o u}.include? s[0].downcase #Can you see why we use downcase here?
end

snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines
snowy_words = to_words snowy

#Example
puts "Here are the lines of Snowy that start with a vowel"

snowy_lines.each do |line|
  puts " " + line if starts_with_vowel line
end

puts
puts "Here are the lines of Snowy that have an odd number of words"
#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1
snowy_lines.each do |line|
  odd_lines = to_words line
  if odd_lines.count % 2 == 1
    puts "  " + line
  end
end

puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0
while i < snowy_lines.count
  line1 = to_words snowy_lines[i]
  line3 = to_words snowy_lines[i + 2]

  line2 = to_words snowy_lines[i + 1]
  line4 = to_words snowy_lines[i + 3]

  line5 = to_words snowy_lines[i + 4]
  line7 = to_words snowy_lines[i + 6]

  line6 = to_words snowy_lines[i + 5]
  line8 = to_words snowy_lines[i + 7]

  puts line1.last + " " + line3.last
  puts line2.last + " " + line4.last
  puts line5.last + " " + line7.last
  puts line6.last + " " + line8.last


  puts
  i += 9 # This is a short way of writing i = i + 1
end
