class CashRegister
  
  attr_accessor :discount
  attr_writer :total 
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount.to_i
  end 
  
  def total
    @total 
  end 
  
  def add_item(title, price, quantity = nil)
    @total += price
  end 
  
end 