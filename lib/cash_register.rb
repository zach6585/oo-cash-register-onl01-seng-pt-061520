class CashRegister
  
  attr_accessor :discount, :items, :last_price, :last_quantity
  attr_writer :total 
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
    @last_quantity = 1 
    @last_price = 0 
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
      :last_price = price*quantity 
      :last_quantity = quantity 
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
  
  def void_last_transaction
    if @last_quantity == 1 
      @items.pop
      @total -= @last_price
    else 
      i = 0 
      while i < @last_quantity 
      
    end 
  end 
  
end 