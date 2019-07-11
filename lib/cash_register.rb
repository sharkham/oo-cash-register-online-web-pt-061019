class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = nil)
    @discount = discount
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
  end

  def apply_discount
    if discount
      self.total -= self.total * (self.discount/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end 
  end

end
