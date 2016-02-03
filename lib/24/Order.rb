class Order
  
  attr_reader :items
  
  include Itemcontainer
	    
	def initialize 
		@items = Array.new
	end
  
end