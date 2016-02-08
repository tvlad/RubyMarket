class Item
	
  
	def initialize(options = {})
		@price = options[:price]
		@weight = options[:weight]
    @name = options[:name]
    
    #    if @weight == nil
    #      @weight = 1
    #    end
    
    #    if @name == nil
    #      @name = "noname"
    #    end
    @weight = 1 if @weight == nil
    @name = "noname" if @name == nil
    
	end
	
  def self.set_default (options)
    
    
  end 
  
	attr_reader :price, :weight, :name
	
	attr_writer :price
  
  
	
	#attr_accessor :price, :weight
	
	
end

