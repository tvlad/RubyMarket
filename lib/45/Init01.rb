require_relative "item_container"
require_relative "Item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "Cart"
require_relative "Order"


item1 = RealItem.new(:name => "Folk", :weight => 4, :price => 100)
item2 = RealItem.new(:price => 20)
item3 = VirtualIem.new(:name => "Book", :price => 6)
item4 = VirtualIem.new(:name => "mp3")

puts "-----------------------"
puts "Item.discount - " + Item.discount.to_s

puts "-----------------------"
puts item1.price
puts item1.real_price
puts item1.tax

puts "-----------------------"
cart = Cart.new
cart.add_item(item1)
cart.add_item(item3)
cart.add_item(item3)

order = Order.new
order.add_item(item1)
order.add_item(item2)
order.add_item(item3)
order.add_item(item3)

puts "cart.items.size - " + cart.items.size.to_s
puts "order.items.size - " + order.items.size.to_s

cart.items.each {|key| p key}
puts "-----------------------"
order.items.each {|key| p key}

order.remove_item
puts "after removing the last item -----------------------"
order.items.each {|key| p key}

order.add_item(item4)
puts "\nafter adding a new item to order -----------------------"
order.items.each {|key| p key}

puts "\nValidate -----------------------"
order.validate


puts "\n-----------------------"
puts order.count_valid_items

