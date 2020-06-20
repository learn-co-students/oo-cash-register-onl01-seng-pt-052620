class CashRegister
  attr_accessor :total, :items, :price, :discount, :prices 
  
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @title = title
    quantity.times do
    self.items << @title
  end
    self.prices << price*quantity
    self.total += price*quantity
    
  end
  
  def apply_discount
     if self.discount == 0 
       "There is no discount to apply."
     else
       @total -= self.discount * @total/100
       "After the discount, the total comes to $#{@total}."
     end  
    
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    if self.prices.length == 1 
       self.total = 0.0 
     else 
       self.total -= self.prices.pop()
    end
  end
end 
