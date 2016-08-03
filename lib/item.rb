class Item
  attr_reader :product
  def initialize
   @product = {name: nil, price: nil}
  end
  def offer_product(name, price)
    @product = {name: name, price: price}
  end
end
