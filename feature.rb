require 'json'
data=JSON.parse(File.read('receipt.json'))
data[0]['shopName']
data[0]['address']
data[0]['phone']
data[0]['prices'][0]["Choc Mousse"]

def find_price(name)
  data=JSON.parse(File.read('receipt.json'))
  return data[0]['prices'][0][name]
end
