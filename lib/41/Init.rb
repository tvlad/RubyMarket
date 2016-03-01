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



order = Order.new
@items.each { |i| order.add_item(i)  }
order.place
puts order.place_at.strftime("%b %-d, %Y %H:%M:%S")
#puts order.time_spent_on_sending_email

