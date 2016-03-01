require "pony"

class Order
  
  attr_reader :items
  
  include Itemcontainer
  
	    
	def initialize 
		@items = Array.new
	end
  
  def place
    thr = Thread.new do
      Pony.mail(:to => StoreApplication::Admin.email,
        :from => 'My Store <jason.binwood@gmail.com>',
        :via => :smtp, 
        :subject => 'New order has been placed', 
        :body => "Please check back your admin page to see it!",
        :via_options => {
          :address => 'smtp.gmail.com',
          :port => '587',
          :enable_starttls_auto => true,
          :user_name => 'tvlad.test@gmail.com',
          :password => 'HDaMxN68Ru',
          :authentication => :plain,
          :domain => "mail.google.com"})
    end
    while (thr.alive?)
      puts "."
      sleep(1)
    end
  end 
  
 
  
end