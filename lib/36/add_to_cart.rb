require_relative "Init"

cart = Cart.new(ARGV.delete_at(0))


if ARGV.size == 0 
#    @items.each { |i| cart.add_item(i) if i.name == "noname" }
puts "You should input a product name"
end


ARGV.each do |a|
  
  @items.each { |i| cart.add_item(i) if a == i.name }
  
end

cart.read_from_file

begin
  cart.save_to_file
rescue Cart::ItemNotSupported
  puts "One of your items is not supported. Unsupported are: #{Cart::UNSUPPORTED_ITEM}"
end

cart.items.each { |i| p i }