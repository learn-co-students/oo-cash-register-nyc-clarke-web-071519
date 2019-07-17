class CashRegister

attr_accessor :total, :discount, :title, :items 

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, number=1)
        number.times do
        @items << title
        @last = price * number
        end
    
        @total = self.total + price * number
    end

    def apply_discount
        @total = self.total * (1.0 - discount/100.0)
        if discount > 1
            return "After the discount, the total comes to $#{@total.to_i}."
        else 
            return "There is no discount to apply."
        end
    end

    def items 
        @items
    end

    def void_last_transaction
        @total = @total - @last
    
    end

    



end