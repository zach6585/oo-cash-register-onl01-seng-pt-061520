class CashRegister
  
  attr_accessor :discount, :items
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
      i = 0 
      while i < quantity 
        @items << title
        i +=1 
      end 
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
  end 
    
  
end 