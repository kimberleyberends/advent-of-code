=begin
--- Day 4: The Ideal Stocking Stuffer ---

Santa needs help mining some AdventCoins (very similar to bitcoins) to use as gifts for all the economically forward-thinking little girls and boys.

To do this, he needs to find MD5 hashes which, in hexadecimal, start with at least five zeroes.
The input to the MD5 hash is some secret key (your puzzle input, given below) followed by a number in decimal.
To mine AdventCoins, you must find Santa the lowest positive number (no leading zeroes: 1, 2, 3, ...) that produces such a hash.

For example:

If your secret key is abcdef, the answer is 609043, because the MD5 hash of abcdef609043 starts with five zeroes (000001dbbfa...), and it is the lowest such number to do so.
If your secret key is pqrstuv, the lowest number it combines with to make an MD5 hash starting with five zeroes is 1048970; that is, the MD5 hash of pqrstuv1048970 looks like 000006136ef....
Your puzzle input is ckczppom.
=end

#what is MD5? => Message Digest algorithm 5
#hexadecimal? #=> the output of the MD5 key is in series of hexadecimal numbers
#generate the MD5 hash of ckczppom
#find the lowest one starting 00000, that has a key not starting with 0? (eg. abcdef999999) ????

#try:
#concat key with decimal number (up to 8 digits)
#generate MD5 hash
#iterate through hash. check if first 5 characters = 0
#If yes, return the number, else increment number by 1

#Following modified from https://github.com/gchan/advent_of_code_ruby/blob/master/day-4/day-4-part-1.rb

require 'digest'

secret_key = "ckczppom"
value = 0

while true
  digest = Digest::MD5.hexdigest("#{secret_key}#{value}")
  break if digest =~ /\A00000/  # whaaaaa?

  value += 1
end

puts value #=>117946

#Part Two
#Now find one that starts with six zeroes.

#add a zero!
#=> 3938038


