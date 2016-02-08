module Itemcontainer
  
  module Class_Methods
  
    def min_price
      100
    end
  
  end
  
  module Instance_Methods
    
    def add_item(item) 
      unless item.price < self.class.min_price
        @items.push item
      end
    end
    
    def remove_item
      @items.pop
    end
    
    def remove_nn(nn)
      @items.delete_at(nn)
    end

    def validate
      @items.each { |i| puts "No price for this item ( " + i.to_s + " )"  if i.price.nil? }
    end

    def delete_invalid_items
      @items.delete_if { |i| i.price.nil?}
    end
  
    def count_valid_items
      @items.count { |i| i.price }
    end
  
  end
  
  def self.included(base)
    base.extend(Class_Methods)
    base.class_eval do
      include Instance_Methods
    end
  end
  
end