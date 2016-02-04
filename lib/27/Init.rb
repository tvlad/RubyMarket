require_relative "item_container"
require_relative "Item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "Cart"
require_relative "Order"

@items = []
@items << RealItem.new(:name => "Folk", :weight => 4, :price => 100)
@items << RealItem.new(:name => "Spoon", :price => 110)
@items << VirtualIem.new(:name => "Book", :price => 120)
@items << VirtualIem.new(:name => "mp3", :price => 80)
@items << VirtualIem.new(:name => "avi", :price => 60)

puts "-----------------------"


