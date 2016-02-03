class Order
  
  attr_reader :items
  
 include Itemcontainer::Manager
 include Itemcontainer::Info
	    
	def initialize 
		@items = Array.new
	end
  
end