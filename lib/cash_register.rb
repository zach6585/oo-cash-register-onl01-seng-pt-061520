class CashRegister
  
  attr_accessor :discount
  attr_writer :total 
  
  def initialize(discount = nil)
    @total = 0 
    @discount = discount
  end 
  
  def total
    @total 
  end 
  
  def add_item(title, price, quantity = nil)
    if quantity != nil 
      @total += price*quantity
    else 
      @total += price 
    end 
  end 
  
  def apply_discount(discount)
    if !@discount 
      puts "There is no discount to apply."
      @total
    else 
      puts "After the discount, the total comes to #{@total -= @discount}."
      @total -= @discount 
      @total
    end 
  end 
    
  
end 