require 'pry'

class CashRegister
    attr_accessor :total 
    attr_reader :discount, :items

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity=1)
        quantity.times do
            @items << item
        end
        @last_total = @total
        @total += (price * quantity)
    end

    def apply_discount
        if @discount != 0
            self.total -= (total * discount.to_f / 100).to_i 
            "After the discount, the total comes to $#{total}."
            
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total = @last_total
    end
end
