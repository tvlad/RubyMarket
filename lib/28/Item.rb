class Item
  
  @@discount = 0.1
	
	def initialize(options = {:name => "noname"})
		@real_price = options[:price]
		@name = options[:name]
	end
	
	attr_reader :real_price, :name
	
	attr_writer :real_price
	
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
    (@real_price - @real_price*self.class.discount) + tax if @real_price 
  end
  
   
  def tax
    type_tax = if self.class == VirtualIem
      1
    else
      2
    end
    cost_tax = if @real_price > 100
      @real_price*0.2
    else
      @real_price*0.1
    end
    cost_tax + type_tax 
  end
	
end

