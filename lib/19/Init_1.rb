require_relative "Item"
require_relative "Cart"


puts "-----------------------"

item1 = Item.new()
item1.price = 10
#item1.name = "Folk"

item2 = Item.new(:weight => 4, :price => 20)

puts "Add 3 new items and remove the last one -----------------------"

item3 = Item.new(:name => "Spoon", :weight => 6)
item4_hash = {:name => "Cup", :weight => 7, :price => 50}
item4 = Item.new(item4_hash)
item5 = Item.new(:name => "Plate", :weight => 8, :price => 60)

puts "asd " + "cvbb "

item4.info {|attr| puts (item4_hash.key(attr).to_s + " - " + attr.to_s) }

puts "-----------------------"

item1.info {|attr| puts (item4_hash.key(attr).to_s + " - " + attr.to_s) }

#item4_hash.each_key { |key| puts key }

puts "-----------------------"
item5 = Item.new({:price => 200})

p item5

puts "-----------------------"
item6 = Item.new({})

p item6

