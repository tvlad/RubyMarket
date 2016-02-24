require_relative "Item"
require_relative "Cart"


puts "-----------------------"



item1 = Item.new(:name => "Folk", :price => 10)

item2 = Item.new(:weight => 4, :price => 20)



puts "Add 3 new items and remove the last one -----------------------"

item3 = Item.new(:name => "Spoon", :weight => 6)
item4_hash = {:name => "Cup", :weight => 7, :price => 50}
item4 = Item.new(item4_hash)
item5 = Item.new(:name => "Plate", :weight => 8, :price => 60)

item4.info {|attr| puts(item4_hash.key(attr).to_s + " - " + attr.to_s) }

puts "-----------------------"

#item4_hash.each_key { |key| puts key }

cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)
cart.add_item(item3)
cart.add_item(item4)
cart.add_item(item5)

#p cart 
cart.items.each {|i| p i}

cart.delete_invalid_items
puts "-----------------------"
cart.items.each {|i| p i}

