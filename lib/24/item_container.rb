module Itemcontainer
  
  def remove_item
    @items.pop
  end
    
  def add_item(item)
    @items.push item
  end

  def remove_nn(nn)
    @items.delete_at(nn)
  end

  def validate
    @items.each { |i| puts "No price for this item ( " + i.to_s + " )"  if i.real_price.nil? }
  end

  def delete_invalid_items
    @items.delete_if { |i| i.real_price.nil?}
  end

  def count_valid_items
    @items.count { |i| i.real_price }
  end
  
end