class Order
  
  attr_reader :items, :place_at, :time_spent_on_sending_email
  
  include Itemcontainer
  
	    
	def initialize 
		@items = Array.new
	end
  
  def place
    @place_at = Time.now
#    thr = Thread.new do
#      Pony.mail(:to => StoreApplication::Admin.email,
#        :from => 'My Store <jason.binwood@gmail.com>',
#        :via => :smtp, 
#        :subject => 'New order has been placed', 
#        :body => "Please check back your admin page to see it!",
#        :via_options => {
#          :address => 'smtp.gmail.com',
#          :port => '587',
#          :enable_starttls_auto => true,
#          :user_name => 'tvlad.test@gmail.com',
#          :password => 'HDaMxN68Ru',
#          :authentication => :plain,
#          :domain => "mail.google.com"})
#    end
#    while (thr.alive?)
#      puts "."
#      sleep(1)
#    end
#    sent_email_at = Time.now
#    @time_spent_on_sending_email = sent_email_at - @place_at
  end 
  
 
  
end