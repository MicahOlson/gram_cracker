#!/usr/bin/env ruby

require('./lib/cracker')

class Program
  def self.start
    system 'artii "Gram-Cracker!"'
    puts "-by Micah L. Olson\n\n"
    puts "Enter two words or two phrases below to see if they are anagrams (sharing\nall the same letters), antigrams (sharing no common letters), or neither.\n"
    loop do
      print "\nFirst word or phrase: "
      str1 = gets.chomp
      print 'Second word or phrase: '
      str2 = gets.chomp
      puts "\n=> #{GramCracker.new(str1, str2).crack}\n\n"
      print 'Crack another gram?[y/n] '
      again = gets.chomp
      break if again == 'n'
    end
    puts "\nThank you for using Gram-Cracker! Goodbye."
  end
end

Program.start
