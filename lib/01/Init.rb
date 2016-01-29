require_relative "Item"

item1 = Item.new()
item1.price = 10

puts "for object - "
	p item1
puts "price of item1 = " + item1.price.to_s


item2 = Item.new()
item3 = Item.new({:weight => 4})


item2.price = rand(100)
item3.price = 30

puts "item1.price = " + item1.price.to_s
puts "item1.weight = " + item1.weight.to_s
puts "item2.price = " + item2.price.to_s
puts "item3.price = " + item3.price.to_s
puts "item3.weight = " + item3.weight.to_s

my_data = {:name => "Ber", :fam_name => "Xes"}

puts my_data[:name]
puts my_data[:fam_name]

puts "-----------------------"
