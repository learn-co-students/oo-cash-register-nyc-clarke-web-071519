
class CashRegister

    attr_accessor :total, :discount, :quantity

def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
end

def add_item(title, price, quantity = 1)
     
    quantity.times do
        @cart << title
        end

    @price = price 
    @total = price*quantity + self.total 
    @last = price*quantity
end

def apply_discount
    if @discount == 0
        return "There is no discount to apply."
    else
    @total = @total * (1.0 - @discount/100.0)
    return "After the discount, the total comes to $#{@total.to_i}."
    end
end

def items
   @cart
end

def void_last_transaction
    @total = @total - @last
end

end