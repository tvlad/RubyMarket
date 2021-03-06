require_relative "item_container"
require_relative "Item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "Cart"
require_relative "Order"


item1 = RealItem.new(:name => "Folk", :weight => 4, :price => 180)
item2 = RealItem.new(:name => "Spoon", :price => 300)
item3 = VirtualIem.new(:name => "Book", :price => 250)
item4 = VirtualIem.new(:name => "mp3", :price => 200)
item5 = VirtualIem.new(:name => "avi", :price => 210)

puts "-----------------------"


cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)
cart.add_item(item3)
cart.add_item(item4)
cart.add_item(item5)

order = Order.new
order.add_item(item1)
order.add_item(item2)
order.add_item(item3)
order.add_item(item4)

puts cart.items.size
puts cart.items
p cart.items