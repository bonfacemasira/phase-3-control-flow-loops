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
    # puts "Looping!"
    puts "i is: #{i}"
end

10.times { |i| puts "i is: #{i}" }

(1..20).each do |num|
    puts num
end
