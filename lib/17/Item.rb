class Item
	
	def initialize(options = {:weight => 1})
		@price = options[:price]
		@weight = options[:weight]
	end
	
	attr_reader :price, :weight 
	
	attr_writer :price
	
	#attr_accessor :price, :weight
	
	
end

