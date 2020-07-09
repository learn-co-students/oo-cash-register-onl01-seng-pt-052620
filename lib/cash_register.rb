class CashRegister
  attr_accessor :discount, :purchases, :total, :transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @purchases = []
  end

  def add_item(name, price, quantity=1)
    @transaction = [name, price, quantity]
    quantity.times do
      @purchases << @transaction[0]
      @total += @transaction[1]
    end
  end

  def apply_discount
    if discount>0
      @total = @total - @total*@discount/100
      result = "After the discount, the total comes to $#{@total}."
    else
      result = "There is no discount to apply."
    end
    result
  end

  def items
    @purchases
  end

  def void_last_transaction
    quantity = @transaction[2]
    quantity.times do
      @purchases.pop
      @total -= @transaction[1]
    end
  end
end
