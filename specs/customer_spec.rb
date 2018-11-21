require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drink.rb')

class CustomerTest < MiniTest::Test

  def setup()
    @customer = Customer.new("Robin", 150, 19)

  end

def test_customer_has_name()
  assert_equal("Robin", @customer.customer_name)
end

def test_customer_has_wallet()
  assert_equal(150, @customer.wallet)
end

def test_customer_age()
  assert_equal(19, @customer.age)
end

def test_customer_can_buy_drink()
  drink1 = Drink.new("Beer", 5)
  drink2 = Drink.new("Wine", 4)
  drink3 = Drink.new("Coke", 2)
  drinks = [drink1, drink2, drink3]

  pub = Pub.new("The George", 500, drinks)
  @customer.buys_drink(pub, "Beer")
  assert_equal(145, @customer.wallet)
  assert_equal(505, pub.till)

end

# def test_can_afford_drink()
#   drink1 = Drink.new("Beer", 5)
#   drink2 = Drink.new("Wine", 4)
#   drink3 = Drink.new("Coke", 2)
#   drinks = [drink1, drink2, drink3]
#
#   pub = Pub.new("The George", 500, drinks)
#
#   result = @customer.has_enough_cash(pub, "Wine")
#   assert_equal(true, result)
# end

end
