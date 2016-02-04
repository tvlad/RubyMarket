require_relative "Init"

cart = Cart.new

ARGV.each do |a|
  @items.each { |i| cart.add_item(i) if a == i.name}
end

  cart.items.each { |i| p i }