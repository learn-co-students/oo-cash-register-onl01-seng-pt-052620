class CashRegister
  attr_accessor :discount, :total, :title, :charge
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity=1)
    @price = price
    @title = title

    counter = quantity
    while counter > 0
      @items << @title
      counter -= 1
    end

    @quantity = quantity
    @charge = @price * @quantity
    @total = @total + price * quantity
  end

  def apply_discount
    deduction = @total * discount/100
    @total -= deduction
    if discount > 0
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @charge
  end
end
