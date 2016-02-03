class Cart
	
	attr_reader :items
  
  include Itemcontainer::Manager
	    
	def initialize 
		@items = Array.new
	end
	



end
