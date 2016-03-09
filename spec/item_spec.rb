require "rspec"
require_relative "../lib/42/Item"
require_relative "../lib/42/virtual_item"

describe Item do
  
  it "calculates price..." do
    item = Item.new(price: 200, name: "Spoon")
#    item.price.should == 200
    
    
    expect(item.price).to eq(200)
  end
  
end