class CashRegister
  
  attr_accessor :discount
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount.to_i
  end 
  
  def total
    @total 
  end 
  
  def add_item(title, price)
    @total += price
  end 
  
end 