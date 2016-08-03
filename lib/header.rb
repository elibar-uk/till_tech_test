require 'json'

class Header

 attr_reader :name, :address, :phone, :data

  def initialize
    @data = JSON.parse(File.read('receipt.json'))[0]
    @name = @data['shopName']
    @address = @data['address']
    @phone = @data['phone']
  end
  
  def prints_header
    p "#{@name}"
    p "#{@address}"
    p "Phone: +#{@phone}"
    return
  end
end
