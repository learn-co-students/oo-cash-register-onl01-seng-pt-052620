require 'pry'

class CashRegister
    attr_accessor :total, :discount, :items, :last_item_amt

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, qty = 1)
        @total += price * qty
        qty.times { @items << title }
        @last_item_amt = price * qty
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            percent = @discount.to_f/100
            tot_discount = @total * percent.to_f
            @total -= tot_discount
            "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def void_last_transaction
        @items.pop
        @total -= @last_item_amt
    end

end