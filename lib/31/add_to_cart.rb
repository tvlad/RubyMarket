require_relative "Init"

cart = Cart.new(ARGV.delete_at(0))

ARGV.each do |a|
  @items.each { |i| cart.add_item(i) if a == i.name}
end

cart.read_from_file

begin
  cart.save_to_file
rescue Cart::ItemNotSupported
  puts "One of your items is virtual, Cart does't support saving VirtualItems yet"
end

cart.items.each { |i| p i }