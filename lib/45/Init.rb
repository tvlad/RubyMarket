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


#p StoreApplication.environment
#p StoreApplication.name
#p StoreApplication::Admin.email
#p StoreApplication::Admin.login

@items = []
@items << RealItem.new({:name => "folk", :weight => 10, :price => 280})
@items << RealItem.new({:name => "Spoon", :weight => 12, :price => 200})
@items << RealItem.new({:name => "Dish", :weight => 14, :price => 250})


@items.each { |i| puts i }

item1 = RealItem.new(:name => "Folk", :weight => 4, :price => 1000)
item2 = RealItem.new(:name => "Spoon", :weight => 6, :price => 2000)

cart = Cart.new("Taras")
cart.add_item(item1)
cart.add_item(item2)

puts cart.items.size
puts "------------------------------"

cart.items.each { |i|  p i}