class Item
	
	def initialize(options = {:weight => 1, :name => "noname"})
		@price = options[:price]
		@weight = options[:weight]
    @name = options[:name]
	end
	
	attr_reader :price, :weight, :name
	
	attr_writer :price, :name
	
	#attr_accessor :price, :weight
  
  def info
		#[price, weight, name]	
		yield(name)
    yield(price)
    yield(weight)
  end
	
	
end

