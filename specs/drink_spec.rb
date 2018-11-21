require('minitest/autorun')
require('minitest/rg')
require_relative('../pub.rb')
require_relative('../customer.rb')
require_relative('../drink.rb')

class DrinkTest < MiniTest::Test

  def setup()
    @drink = Drink.new("Beer", 5)
  end

def test_drink_has_name()
  assert_equal("Beer", @drink.drink_name)
end

def test_drink_has_price()
  assert_equal(5, @drink.price)
end




end
