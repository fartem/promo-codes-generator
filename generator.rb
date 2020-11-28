#!/usr/bin/ruby

length = ARGV[0]
prefix = ARGV[1]
count = ARGV[2]

if length.nil? || prefix.nil? || count.nil?
  puts 'Uncorrect format. Usage: ruby generator.rb [length] [prefix] [count]'
else
  characters = [('a'..'z'), ('A'..'Z'), (0..9)].map(&:to_a).flatten

  count.to_i.times do
    puts prefix + (0...length.to_i).map { characters[rand(characters.length)] }.join
  end
end
