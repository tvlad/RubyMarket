class Item
	
	def initialize(options = {:name => "noname", :weight => 1})
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

