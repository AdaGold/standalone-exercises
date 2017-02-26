#1.

my_strings = ["you", "them", "we"]

string_lengths = []

my_strings.each { |x| string_lengths << x.length } # puts the length straight into the array

puts string_lengths

#2.

my_nums = [10, 17, 24]

final_array = []

my_nums.each do |x|
  if x.even?
    final_array << "even"
  else
    final_array << "odd"
  end
end

puts final_array

#3.

my_strings = ["hello", "dog", "cat"]
string_length = []

my_strings.each do |word|
  if word.length < 4
    string_length << word
  end
end
my_strings = string_length

puts my_strings

#4.

my_strings = ["Bangles", "1234567", "Leo", "Flume", "Spirit"]

long_string = []

my_strings.each { |x| long_string << x.length }

longest_word_index = long_string.index(long_string.max)


puts my_strings[longest_word_index]
