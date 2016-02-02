class Item
	
	def initialize(options = {:name => "noname"})
		@price = options[:price]
		@name = options[:name]
	end
	
	attr_reader :price, :name
	
	attr_writer :price
	
	#attr_accessor :price, :weight
  
  def info
		#[price, weight, name]	
		yield(name)
    yield(price)
  end
	
	
end

