require 'pry'
i = 0
while i < 5
  puts "Looping! #{i}"
  i += 1
end

counter = 0
until counter == 10
  puts "Counting! #{counter}"
  counter += 1
end

10.times do |i|
    puts "Looping!"
    puts "i is: #{i}"
end

10.times { |i| puts "i is: #{i}" }

(1..20).each do |num|
    puts num
end
array = ["this", "is", "Ruby"]

array.map.with_index do |str, index|
  if index.even?
    puts str.upcase
  else
    puts str
  end
end
book = { title: "The Hobbit", author: "J. R. R. Tolkien", published: 1937 }
book.each do |key, value|
  puts "Key: #{key}"
  puts "Value: #{value}"
end
new_array = ["this", "is", "Ruby"].each do |str|
  puts str.upcase
end

puts new_array

num = [1, 2, 3, 4, 5]
puts num
num.map do |num|
  puts num * 2
end

numbers = [1, 2, 3, 4, 5]
puts array
array.collect { |num| puts num * 2 }
array.filter do |num|
  puts num.even?
end

[1, 2, 3, 4, 5].select {|num| puts num.odd?}

words = ["give", "it", nil, "your", nil, "best", "shot"]
words.filter do |word|
  if word != nil
    puts word.capitalize
  end
end

filtered_words = words.filter do |word|
  word != nil
end
puts filtered_words

capitalized_words = filtered_words.map do |word|
  word.capitalize
end

puts capitalized_words

puts numbers.find { |num| num.even? }
puts numbers.filter { |num| num.even? }

users = [{ name: "Duane", phone: "555-555-5555"}, { name: "Liza", phone: "555-555-5556" }]

pp users.find { |user| user[:name] == "Duane" }

users = [
  { name: "Liza", phone: "444-555-5556" },
  { name: "Duane", phone: "555-555-5555"},
  { name: "Cara", phone: "333-555-5556"},
]

sorted_users = users.sort do |user1, user2|
 if user1[:phone] == user2[:phone]
  0
 elsif user1[:phone] < user2[:phone]
  -1
  elsif user1[:phone] > user2[:phone]
    1
 end
end

sorted_users = users.sort { |user1, user2| user1[:phone] <=> user2[:phone] }
sorted_users = users.sort_by { |user1 | user1[:name] }
puts sorted_users

