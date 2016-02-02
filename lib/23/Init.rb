require_relative "Item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "Cart"


puts "-----------------------"



item1 = RealItem.new(:name => "Folk", :weight => 4, :price => 100)
item2 = RealItem.new(:price => 20)
item3 = VirtualIem.new(:name => "Book", :price => 6)


puts "-----------------------"
puts Item.discount

puts "-----------------------"
puts item1.price
puts item1.real_price
puts item1.tax


