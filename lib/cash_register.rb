class CashRegister
    attr_accessor :total

    def initialize(total=0)
        @total = total

    end

    def apply_discount
        
    end

    def add_item(item, price)
        @price = price
        @item = item
        price = self.total + price
    end

    def items
        
    end
end
