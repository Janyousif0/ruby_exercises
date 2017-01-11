class Store

  attr_reader :product
  attr_accessor :price, :color, :rating 

  def initialize(input_options)
    @product = input_options[:product]
    @price = input_options[:price]
    @color = input_options[:color]
    @rating = input_options[:rating]
  end

  def price_increase
    @price = @price * 1.1
  end

  def receipt
    puts "The price of a #{color} #{@product} is #{@price}."
  end


end 


class Store2 < Store


bottle = Store.new(
  product: "bottle",
  price: 1000,
  color: "red"
  )
dvd = Store.new(
  product: "dvd",
  price: 20,
  color: "orange",
  rating: "13+"
  )

p bottle

puts bottle.price
bottle.price_increase
puts bottle.price
bottle.receipt
dvd.receipt


# input_options = { product: "comb"}
# puts input_options[:product]