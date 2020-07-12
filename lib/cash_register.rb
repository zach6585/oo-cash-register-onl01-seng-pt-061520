class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount.to_i
  end 
  
  
  
  def add_item(title, price)
    @total += price
  end 
  
end 