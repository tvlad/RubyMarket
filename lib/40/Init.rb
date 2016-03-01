require_relative "store_application"

StoreApplication.config do |app|
  app.name        = "My Store"
  app.environment = :production
  
  app.admin do |admin|
    admin.email = "tvlad.test@gmail.com"
    admin.login = "admin"
    admin.send_info_emails_on :mondays
  end
end


p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.email
p StoreApplication::Admin.login

@items = []
@items << RealItem.new({:name => "folk", :weight => 10, :price => 100})
@items << RealItem.new({:name => "Spoon", :weight => 12, :price => 110})
@items << RealItem.new({:name => "Dish", :weight => 14, :price => 250})
#@items << VirtualIem.new({:name => "Book", :price => 120})
#@items << AntiqueItem.new({:name => "Lamp", :price => 1300})
#@items << RealItem.new({:price => 500})
#@items << VirtualIem.new(:name => "mp3", :price => 80)
#@items << VirtualIem.new(:name => "avi", :price => 60)
#@items << RealItem.new({:name => "car", :weight => 14, :price => 250})
#@items << RealItem.new({:name => "car", :weight => 16, :price => 170})


order = Order.new
@items.each { |i| order.add_item(i)  }
#order.place

#puts "-----------------------"
#
#@items.each { |i| p i.class, i}
#
#puts "-----------------------"
#
#cart = Cart.new("Roman")
#@items.each { |i| cart.add_item(i) }
#
#p cart.all_cars
#puts "-----------------------"
#p cart.all_folk
#
#puts "-----------------------"
#puts cart.kind_of?(Cart)
#
#puts "-----------------------"
#p @items[0]
#puts "price - " + @items[0].send(:price).to_s
#puts "real_price - " + @items[0].send(:real_price).to_s
#
#puts "-----------------------"
#puts "tax - " + @items[0].send(:tax).to_s
#puts "discount - " + @items[0].send(:discount).to_s