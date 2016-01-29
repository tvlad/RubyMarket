require_relative "Item"
require_relative "Cart"


puts "-----------------------"

cart = Cart.new

item1 = Item.new()
item1.price = 10

item2 = Item.new(:weight => 4, :price => 20)

cart.add_item(item1)

p cart.items

puts "-----------------------"

cart.add_item(item2)
p cart.items

puts "-----------------------"

cart.remove_item
p cart.items

puts "Add 3 new items and remove the last one -----------------------"

item3 = Item.new(:weight => 6)
item4 = Item.new(:weight => 7, :price => 50)
item5 = Item.new(:weight => 8, :price => 60)
cart.add_item(item3)
cart.add_item(item4)
cart.add_item(item5)

p cart.items

cart.remove_nn(cart.items.length - 1)
p cart.items

cart.validate