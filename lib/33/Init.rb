require_relative "string"
require_relative "item_container"
require_relative "Item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "Cart"
require_relative "Order"

@items = []
@items << RealItem.new({:name => "folk", :weight => 10, :price => 100})
@items << RealItem.new({:name => "Spoon", :weight => 12, :price => 110})
@items << RealItem.new({:name => "Dish", :weight => 14, :price => 250})
@items << VirtualIem.new({:name => "Book", :price => 120})
@items << AntiqueItem.new({:name => "Lamp", :price => 1300})
#@items << RealItem.new({:price => 500})
#@items << VirtualIem.new(:name => "mp3", :price => 80)
#@items << VirtualIem.new(:name => "avi", :price => 60)
@items << RealItem.new({:name => "car", :weight => 14, :price => 250})
@items << RealItem.new({:name => "car", :weight => 16, :price => 170})

puts "-----------------------"

@items.each { |i| p i,  i.class }

puts "-----------------------"

cart = Cart.new("Roman")
@items.each { |i| cart.add_item(i) }

p cart.all_cars

#puts "-----------------------"
#cart.items.each { |i| p i }

