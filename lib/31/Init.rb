require_relative "string"
require_relative "item_container"
require_relative "Item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "Cart"
require_relative "Order"

@items = []
#@items << RealItem.new({:name => "Folk", :weight => 10, :price => 100})
#@items << RealItem.new({:name => "Spoon", :weight => 12, :price => 110})
#@items << RealItem.new({:name => "Dish", :weight => 14, :price => 250})
@items << VirtualIem.new({:name => "Book", :price => 120})
@items << RealItem.new({:price => 500})
#@items << VirtualIem.new(:name => "mp3", :price => 80)
#@items << VirtualIem.new(:name => "avi", :price => 60)

puts "-----------------------"

@items.each { |i| p i,  i.class }
#
#puts "-----------------------"
#
#@items2 = []
#@items2 << Item.new({:name => "Folk", :weight => 10, :price => 100})
#@items2 << Item.new({:name => "Spoon", :weight => 12, :price => 110})
#@items2 << Item.new({:name => "Dish", :weight => 14, :price => 250})
#@items2 << Item.new(:name => "Book", :price => 120)
#@items2 << Item.new({:price => 500})
#
#@items2.each { |i| p i }