poem = File.read('the-man-from-snowy-river.txt')
lines = poem.lines


#/\W+/ is a "regular expression" - a text-searching pattern.
# /\s+/ The slashes start and end the pattern. \W means "any non-alphabetic character"
# and + means "repeated one or more times"

words = poem.split(/\W+/)

stanzas = poem.split(/\n\n/)

#Example
puts "There are #{words.count} words"
puts "There are #{words.uniq.count} different words" #uniq removes duplicates

#Exercises
puts "The second through sixth words are #{words.slice(1..5)}"

puts "The poem has #{lines.count} lines in it"

puts "The first line has #{lines[0].split(/\W+/).count} words in it"

puts "The poem has #{stanzas.count} number of stanzas"

first_stanza_lines = stanzas[0].split(/\n/)

first_stanza = stanzas[0]

puts "The first stanza has #{stanzas[0].split(/\W+/).count} words in it"

puts "Here is the poem with its lines randomly rearranged:  #{lines.shuffle}"
