class Item
  
  @@discount = 0.1
	
	def initialize(options = {:name => "noname"})
		@price = options[:price]
		@name = options[:name]
	end
	
	attr_reader :price,  :name
	
	attr_writer :price
	
	#attr_accessor :price, :weight
  
  def info
		#[price, weight, name]	
		yield(name)
    yield(price)
  end
	
  def self.discount
    if Time.now.month == 3
      @@discount += 0.3
    else
      @@discount
    end
  end
  
  def price
    @price - @price*self.class.discount 
  end
	
end

