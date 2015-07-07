require './morse_to_english'
require './insert_space'

input = '..--..-...-....---....-...-.....'

mte = MorseToEnglish.new
permutations = InsertSpace.new.permutations(input)
out = File.open('out.txt', 'w')

# clean it
permutations.map do |p|
  next if p.split(' ').include?('.')
  next if p.split(' ').include?('-')
  next if p.match /\B(\.|-){5,}\B/
  out.write "#{mte.translate(p).join}\n"
end
