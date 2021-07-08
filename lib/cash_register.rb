class CashRegister

    attr_accessor :discount, :total, :items, :last_transaction

    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @items = []
        @last_transaction = {item: nil, total: 0}
    end

    def add_item(title,price,quantity=1)
        @total += price*quantity
        quantity.times do @items.push(title)
        end
        @last_transaction[:item] = title
        @last_transaction[:total] += price*quantity
    end

    def apply_discount
        if @discount
            @total *= 1-@discount.to_f/100
            "After the discount, the total comes to $#{total.to_i}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction[:total]
    end

end