class Customer

  attr_reader :customer_name, :wallet, :age

  def initialize(customer_name, wallet, age)
    @customer_name = customer_name
    @wallet = wallet
    @age = age

  end

  #customer will select drink by name, then call sell_pub method to check conditions for selling drink before removing money from wallet
  def buys_drink(pub, drink_name)
    drink_to_buy = pub.sell_drink(self, drink_name)
    @wallet -= drink_to_buy.price
  end

end
