a = "hello"
puts "********************************************************"
puts "Test Conditionals for String a in the ruby context"
puts "********************************************************"
puts ""
puts "variable a inspect value: " + a.inspect

if a == "hello"
  puts "variable a is equal hello"
end

if a != nil
  puts "it's not null"
end

unless a == nil
  puts "it's not null as well"
end

if defined? a
  puts "it's defined"
end
