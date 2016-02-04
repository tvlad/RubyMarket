class Order
  
  attr_reader :items
  
  include Itemcontainer
  
	    
	def initialize 
		@items = Array.new
	end
  
  def place
    
  end 
  
 
  
end