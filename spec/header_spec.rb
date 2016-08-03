require 'header'

describe Header do
  subject(:header) { described_class.new }
  let(:shop_details) {"The Coffee Connection"
                      "123 Lakeside Way"
                      "Phone: +16503600708"}

  describe '#initialize' do
    it'initializes with shop details' do
      expect(header.name).to eq("The Coffee Connection")
      expect(header.address).to eq("123 Lakeside Way")
      expect(header.phone).to eq("16503600708")
    end
  end
  describe '#prints_header' do
    it 'pints out the reciept header'do
      expect do
        hed = Header.new
        hed.prints_header.to output(shop_details).to_stdout
      end
    end
  end
end
