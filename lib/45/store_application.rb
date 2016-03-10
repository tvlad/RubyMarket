class StoreApplication
   
  class << self
    
    def config
      unless @instance
        puts "loading files ..."
        puts self.class
        yield(self)
        require "pony"
        require_relative "../45/string"
        require_relative "../45/item_container"
        require_relative "../45/Item"
        require_relative "../45/virtual_item"
        require_relative "../45/real_item"
        require_relative "../45/antique_item"
        require_relative "../45/Cart"
        require_relative "../45/Order"
      end
      @instance ||= self
      @instance.freeze
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
          @instance.freeze
        end
        
        def send_info_emails_on(day)
          @send_info_emails_on = day
        end
        
      end
      
    end
  
  
end