#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def last_word line
  line.split(/[\W]+/).last
end


snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines

puts "Here are all the rhyming pairs from the ends of the Snowy lines"
# i = 0
#
# #rewrite this to use map and each rather than while
# #note: you will find each_slice useful
# while i < snowy_lines.count
#   [0, 1, 4, 5].each do |n|
#     first_word = last_word snowy_lines[i + n]
#     second_word = last_word snowy_lines[i + n + 2]
#     puts "#{first_word}, #{second_word}"
#   end
#   puts
#   i += 9 # This is a short way of writing i = i + 1
# end

evenWords = []
oddWords = []

mapPoem = snowy_lines.map{|line| last_word line}
mapPoem.delete(nil)

mapPoem.each_index{|x| evenWords.push(mapPoem[x]) if x.even?}
mapPoem.each_index{|x| oddWords.push(mapPoem[x]) if x.odd?}

evenWords.each_index do |i|
  puts evenWords[i] + " " + oddWords[i]
end

# evenWords.each_index{|i| puts evenWords[i] + " " + oddWords[i]}
