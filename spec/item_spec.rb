require 'item'
describe Item do
  subject(:item) { described_class.new }
  let(:name) { 'pizza' }
  let(:price) { 12.65 }
  let(:product) { { name: name, price: price } }
  let(:product_new) { {name: 'pizza', price: 12.65 } }

    describe '#offer_product' do
     it 'sets the product' do
      item.offer_product(name, price)
      expect(item.product).to eq product_new
    end
  end
end
