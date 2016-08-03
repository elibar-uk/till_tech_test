require 'order'

describe Order do
  subject(:order) { described_class.new }
  let(:food_item) { {'fish'=> 5 }}
  let(:food_peice) { 'fish' }
  let(:food_qty) { 5 }

  describe '#initialize' do
    it 'initializes with orders array' do
      expect(order.orders).to eq []
    end
  end
  describe '#add_item' do
    it 'adds the item to the orders array' do
       order.add_item(food_peice, food_qty)
       expect(order.orders).to eq [food_item]
    end
  end
end
