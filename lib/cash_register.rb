require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = 0
  end 
  
  def total
    @total
  end 
  
  def add_item(title, price, quantity = 1)
    sum = price * quantity
    @total = @total + sum
    quantity.times do
      @items << title
    end 
    @last_transaction = sum
  end 
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      discount_amount = @total/5
      @total = @total - discount_amount
      "After the discount, the total comes to $#{@total}."
    end 
  end 
  
  def items
    @items
  end 
  
  def void_last_transaction
    @total = @total - @last_transaction
  end 

end 

 
