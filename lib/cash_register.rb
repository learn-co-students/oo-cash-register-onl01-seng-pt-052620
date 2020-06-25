class CashRegister
  attr_accessor :total, :items, :price, :discount
  
  def initialize (discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item (title, price, quantity=1)
    #self.total += price * quantity
    #@items.fill(title, @items.size, quantity)
    quantity.times do 
      @items << title
    end
    @last_total = @total
    @total += price * quantity
  end
  
  def apply_discount
    if @discount == 0
      p "There is no discount to apply."
    else
      @total = (@total *((100 - @discount) / 100.to_f)).to_i
      #@total = @total - (@discount / 100 * @total) 
      p "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total = @last_total
  end
  
end
