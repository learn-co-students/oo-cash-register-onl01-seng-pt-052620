require 'pry'

class CashRegister

  attr_accessor :total, :discount, :all_items, :last_transaction


  def initialize(discount = 0)
    @last_transaction = 0
    @all_items = []
    @total = 0
    @discount = discount
  end

  def add_item(item, cost, qauntity = 1)
    item_quantity = []
    self.last_transaction = (cost*qauntity)
    self.total = self.total + (cost*qauntity)
    self.total
    # binding.pry
    item_quantity.fill(item, 0, qauntity)
    self.all_items = (self.all_items << item_quantity).flatten
  end

  def apply_discount
    unless self.total.is_a?(Float)
      self.total = self.total.to_f
    end
    if self.discount == 0
      "There is no discount to apply."
    else
      added_discount = self.discount.to_f
      added_discount = added_discount/100
      # discount = 0.20
      discount_total = self.total-(self.total*added_discount)
      self.total = discount_total.to_i
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @all_items
  end

  def void_last_transaction
    # binding.pry
    self.total -= self.last_transaction
  end

end
