snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines

split_pattern = /[\W]+/
snowy_words = snowy.split split_pattern

#Example
puts "This poem has #{snowy_words.count} words in it."

puts "Here are the lines of Snowy that start with a vowel"

snowy_lines.each do |line|
  c = line[0].downcase
  puts '  ' + line if c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u'
end

puts
puts "Here are the lines of Snowy that have an odd number of words"
#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1

snowy_lines.each do |line|
  odd_lines = line.split split_pattern
  odd_lines_count = odd_lines.count
  if odd_lines_count % 2 == 1
    puts "  " + line
  end
end

puts "..."

puts
puts "Here is Snowy double-spaced"
    snowy_lines.each do |line|
       puts line + "\n"
      end


puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0
while i < snowy_lines.count
  line1 = snowy_lines[i].split split_pattern
  line3 = snowy_lines[i + 2].split split_pattern

  line2 = snowy_lines[i + 1].split split_pattern
  line4 = snowy_lines[i + 3].split split_pattern

  line5 = snowy_lines[i + 4].split split_pattern
  line7 = snowy_lines[i + 6].split split_pattern

  line6 = snowy_lines[i + 5].split split_pattern
  line8 = snowy_lines[i + 7].split split_pattern

  puts line1.last + " " + line3.last
  puts line2.last + " " + line4.last
  puts line5.last + " " + line7.last
  puts line6.last + " " + line8.last


  #hints:
  # you can access snowy_lines[i], snowy_lines[i + 1] etc each time through the loop
  # split each line into words using split_pattern
  # get the last word from the words using .last
  # grab the last words four at a time and then print out the first and third,
  # then the second and fourth puts
  i += 9 # This is a short way of writing i = i + 1
end
