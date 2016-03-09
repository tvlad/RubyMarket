require "rspec"
require_relative "../lib/43/Item"
require_relative "../lib/43/virtual_item"
require_relative "../lib/43/Cart"
require_relative "../lib/43/item_container"


describe Cart do
  
  it "adds items into the cart" do
    cart = Cart.new
    
    item1 = Item.new(:name => "Folk", :weight => 4, :price => 100)
    item2 = Item.new(:name => "Spoon", :weight => 6, :price => 150)
    item3 = Item.new(:name => "Book", :price => 80)
    
    cart.add_items(item1, item2, item3)
    
    expect(cart.items).to include(item1, item2, item3) 
  end
  
end
