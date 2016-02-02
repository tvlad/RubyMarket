class RealItem < Item
  
  
  def initialize(options = {:weight => 1})
    @weight = options[:weight]
    super
  end
	
	attr_reader  :weight
  
  def info
		yield(weight)
    super
  end
  
end