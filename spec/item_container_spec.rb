require "rspec"
require_relative "../lib/45/Item"
require_relative "../lib/45/virtual_item"
require_relative "../lib/45/item_container"


class ItemBox
  
  include Itemcontainer
  
  def initialize ()
		@items = []
  end
  
  
end

describe Itemcontainer do
  
    
  before(:each) do
    
    @box = ItemBox.new
    
    @item1 = Item.new(:name => "Folk", :weight => 4, :price => 180)
    @item2 = Item.new(:name => "Spoon", :weight => 6, :price => 200)
    
    #    @box.add_item(@item1)
    #    @box.add_item(@item2)
    
#    @box.items.each { |i|  p i}
#    puts "--------------------------"
       
  end
  
  
  it "adds items into container" do
       
    @box.add_item(@item1)
    @box.add_item(@item2)
        
    expect(@box.items.size).to eq(2)
    
  end
   
  it "remove item from the box" do
    @box.add_item(@item1)
    @box.add_item(@item2)
#    @box.remove_item
    expect(@box.remove_item).to eq(@item2)
    expect(@box.items.size).to eq(1)
    @box.remove_item
    expect(@box.items).to be_empty
  end
  
 
end