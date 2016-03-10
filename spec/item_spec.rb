require "rspec"
require_relative "../lib/44/Item"
require_relative "../lib/44/virtual_item"

describe Item do
  
  before(:all) do
    
  end
  
  before(:each) do
    @item = Item.new(price: 200, name: "Spoon")
  end
  
  after(:each){}
  after(:all){}
  
  
  it "calculates price..." do
    expect(@item.price).to eq(162)
    @item.price=(300)
  end
  
  it "returns info about an object" do
    #    item = Item.new("Spoon", price: 200)
    expect(@item.to_s).to eq("Spoon:102.0")
  end
end