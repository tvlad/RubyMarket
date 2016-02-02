require_relative "Item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "Cart"


puts "-----------------------"



item1 = RealItem.new(:name => "Folk", :weight => 4, :price => 20)
item2 = RealItem.new(:price => 20)
item3 = VirtualIem.new(:name => "Book", :price => 6)


puts "-----------------------"


p item1
p item2
p item3

p item1.respond_to?(:weight)
p item2.respond_to?(:weight)
p item3.respond_to?(:weight)



