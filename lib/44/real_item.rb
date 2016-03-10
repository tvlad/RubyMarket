class RealItem < Item
  
  
  def initialize(options = {})
    @weight = options[:weight]
    @weight = 1 if @weight == nil
    super
  end
	
	attr_reader  :weight
  
  def info
		yield(weight)
    super
  end
  
  def to_s
    super + "#{self.weight}"
  end
  
end