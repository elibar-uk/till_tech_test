# require 'json'
# require_relative 'order'
# class Calculator
# attr_accessor :add_item
# attr_reader :total, :order, :orders
#   def initialize(order=Order)
#     @order= order.new
#     @total = 0
#     @orders ={}
#   end
#
#   def find_price(name)
#     data=JSON.parse(File.read('receipt.json'))
#     return data[0]['prices'][0][name]
#   end
#
#   def add(item, quantity)
#     find_price(item)
#     @total += find_price(item) * quantity
#   end
#
#   def remove(item, quantity)
#     @total -= find_price(item) * quantity
#   end
#
#   def calcul
#     array = @order.check_order
#     array.each_with_object({}){ |h, o| h.each { |k,v| (o[k] ||= []) << v } }
#   end
# end
