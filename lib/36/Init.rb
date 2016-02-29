require_relative "store_application"

StoreApplication.new
StoreApplication.new

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

@items.each { |i| p i.class, i}

puts "-----------------------"

cart = Cart.new("Roman")
@items.each { |i| cart.add_item(i) }

p cart.all_cars
puts "-----------------------"
p cart.all_folk

puts "-----------------------"
puts cart.kind_of?(Cart)

puts "-----------------------"
p @items[0]
puts "price - " + @items[0].send(:price).to_s
puts "real_price - " + @items[0].send(:real_price).to_s

puts "-----------------------"
puts "tax - " + @items[0].send(:tax).to_s
#puts "discount - " + @items[0].send(:discount).to_s