class Pub

  attr_reader :pub_name, :till

  def initialize(pub_name, till, drinks)
    @pub_name = pub_name
    @till = till
    @drinks = drinks
  end

  def drinks_count()
    return @drinks.count
  end

  def find_drink_by_name(drink_to_find)
    for drink in @drinks
      if drink.drink_name == drink_to_find
        return drink
      end
    end
    return nil
  end

  def has_enough_cash(customer, chosen_drink_name)
    chosen_drink = find_drink_by_name(chosen_drink_name)
    if customer.wallet >= chosen_drink.price
      return true
    end
  end

  # after customer requests drink, check:
    # if drink exists
    # if customer is old enough
    # if customer has enough cash
  # if all conditions met, remove drink from @drinks array and add money to till (passes back to buy_drink function to remove money from customer)
  def sell_drink(customer, drink_name)
    drink_to_remove = find_drink_by_name(drink_name)
    if drink_to_remove != nil
      if customer_age(customer) == true
        has_enough_cash(customer, drink_to_remove.drink_name)
        @till += drink_to_remove.price
        @drinks.delete(drink_to_remove)
      end
    end
  end

  def customer_age(customer)
    if customer.age >= 18
      return true
    end
  end








end
