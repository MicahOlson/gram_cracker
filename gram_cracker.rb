#!/usr/bin/env ruby

require('./lib/cracker')

class Program
  def self.start
    puts 'Welcome to Gram-Cracker! Enter two words or phrases to see if they are anagrams (sharing all the same letters) or antigrams (having no common letters.'
    print 'Enter the first word or phrase: '
    str1 = gets.chomp
    print 'Enter the second word or phrase: '
    str2 = gets.chomp
    puts GramCracker.new(str1, str2).crack
  end
end

Program.start
