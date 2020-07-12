class CashRegister
  
  attr_accessor :discount
  attr_writer :total 
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end 
  
  def total
    @total 
  end 
  
  def add_item(title, price, quantity = nil)
    if quantity != nil 
      @total += price*quantity
      quantity.loop do 
        @items << title 
      
    else 
      @total += price 
      @items << title
    end 
    
  end 
  
  def apply_discount
    if !@discount 
      "There is no discount to apply."
    else 
      @total -= (@discount*@total/100).to_i
      return "After the discount, the total comes to $#{@total}."
    end 
  
  def items 
    @items
  end 
    
  
end 