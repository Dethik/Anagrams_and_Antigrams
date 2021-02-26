#!/usr/bin/env ruby
require('./lib/anagrams.rb')

puts "Hello and Welcome!"
puts "Please input a pair of strings for us!"
string_1 = gets.chomp.to_s
puts "and the second string please."
string_2 = gets.chomp.to_s
strings = Words.new(string_1, string_2)
strings.anagram