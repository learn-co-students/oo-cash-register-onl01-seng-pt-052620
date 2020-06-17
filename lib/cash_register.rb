require 'pry'

class CashRegister

    attr_accessor :item, :price, :total, :discount, :last_item

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @@items = []
        @@last_item = 0
    end

    def self.total
        @total
    end


    def add_item(item, price, quantity=1)
        @@last_item = (price*quantity)
        @total += (price * quantity)
        quantity.times { @@items << item }
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            x = ((100-@discount.to_f)/100)
            @total = (@total*x).to_i
            "After the discount, the total comes to $#{@total}."
        end
    end

    def items
        @@items
    end

    def void_last_transaction
        @total-=@@last_item
    end

end