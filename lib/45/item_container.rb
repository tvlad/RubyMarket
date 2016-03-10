module Itemcontainer
  
  module Class_Methods
  
    def min_price
      100
    end
  
  end
  
  module Instance_Methods
    
    attr_reader :items 
    
    def method_missing(method_name)
      if method_name =~ /^all_/
        show_all_items_with_name(method_name.to_s.sub(/^all_/, '').chomp('s'))
      else
        super
      end
    end
    
    def add_item(item) 
      #      unless item.price < self.class.min_price
      #        @items.push item
      #      end
      @items.push item
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
    
    private
    
    def show_all_items_with_name(n)
      @items.map {|i| i if n == i.name}
    end
        
  end
  
  def self.included(base)
    base.extend(Class_Methods)
    base.class_eval do
      include Instance_Methods
    end
  end
  
   
end