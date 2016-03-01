class StoreApplication
   
  class << self
    
    def config
      unless @instance
        puts "loading files ..."
        puts self.class
        yield(self)
        require "pony"
        require_relative "string"
        require_relative "item_container"
        require_relative "Item"
        require_relative "virtual_item"
        require_relative "real_item"
        require_relative "antique_item"
        require_relative "Cart"
        require_relative "Order"
      end
      @instance ||= self
      
    end
    
    attr_accessor :name, :environment
    
    def admin(&block)
      @admin ||= Admin.new(&block)
    end
    
   end
   
   class Admin
      
      class << self
        
        attr_accessor :email, :login
        
        def new
          unless @instance
            yield(self)
          end
          @instance ||= self
        end
        
        def send_info_emails_on(day)
          @send_info_emails_on = day
        end
        
      end
      
    end
  
  
end