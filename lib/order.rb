
class Order
  
  attr_reader :person, :food, :orders, :check_order, :add_item

  def initialize
    @food = {}
    @orders = []
  end

  def add_item(item, qty)
    @food[item]=qty
    @orders << @food
  end
  def check_order
    @orders
  end
end
