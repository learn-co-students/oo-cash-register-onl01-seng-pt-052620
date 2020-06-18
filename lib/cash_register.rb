class CashRegister

    attr_accessor :total, :discount, :item_name, :last_trans


    def initialize(discount = 0)

        @discount = discount
        @total = 0
        @all_items = []

    end

    def total

        @total

    end
    

    def add_item(item_name, price, quantity = 1)

        if quantity > 1
            i = 0
            while i < quantity
                @all_items << item_name
                i += 1
            end
        else
            @all_items << item_name
        end

        @total += (price * quantity)
        @last_trans = price * quantity
        puts @last_trans

    end

    def apply_discount


        if @discount == 0
            "There is no discount to apply."
        else
            @t = @total * @discount.fdiv(100)
            @total -= @t.to_i
            "After the discount, the total comes to $#{@total}."
        end

    end


    def items

        @all_items

    end


    def void_last_transaction

        @total -= @last_trans
        

    end

end
