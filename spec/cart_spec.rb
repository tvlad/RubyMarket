require "rspec"
require_relative "../lib/43/Item"
require_relative "../lib/43/item_container"
require_relative "../lib/43/antique_item"
require_relative "../lib/43/virtual_item"
require_relative "../lib/43/Cart"



describe Cart do
  
  describe "managing items" do
    
    it "- adds items into the cart" do
      cart = Cart.new("Roman")
    
      item1 = Item.new(:name => "Folk", :weight => 4, :price => 100)
      item2 = Item.new(:name => "Spoon", :weight => 6, :price => 150)
      item3 = Item.new(:name => "Book", :price => 80)
    
      cart.add_items(item1, item2, item3)
    
      expect(cart.items).to include(item1, item2, item3) 
    
    end
    
    it "- remove items from itself" 
      
  end
  
  
  

  it "- counts items in itself"
  it "- places order with all added items"
  it "- clear the cart after the order has been placed"
  
  
end
