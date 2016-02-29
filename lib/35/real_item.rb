class RealItem < Item
  
  
  def initialize(options)
    
    @weight = options[:weight]
    @weight = 1 if @weight == nil
    super(options[:name], options)
  end
	
	attr_reader  :weight
  
  def info
		yield(weight)
    super
  end
  
end