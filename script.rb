#!/usr/bin/env ruby
require('./lib/anagrams.rb')

loop do
  puts "Hello and Welcome!"
  puts "Please input a pair of strings for us!"
  string_1 = gets.chomp.to_s
  puts "and the second string please."
  string_2 = gets.chomp.to_s
  strings = Words.new(string_1, string_2)
  puts strings.anagram
  puts "Would you like to check another anagram, y/n ?"
  user_input = gets.chomp.downcase
  if user_input != 'y'
    break
  end
end