class CashRegister


    attr_accessor :total, :discount, :current_item_cost
    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @item = []
        @current_item_cost
    end 

    def add_item(title, price, quantity=1)
        quantity.times do 
            @item << title
        end 
        previous = @total
        @current_item_cost = (price * quantity)
        @total += @current_item_cost
    end 

    def apply_discount
        if discount != nil
            self.total *= 0.80
            p "After the discount, the total comes to $#{self.total.floor}."
        else 
            p "There is no discount to apply."
        end 
    end 

    def items
        @item
    end 

    def void_last_transaction
        @total -= @current_item_cost
    end 

end 
