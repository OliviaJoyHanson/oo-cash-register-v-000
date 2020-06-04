require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @prices = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    self.total += (price*quantity)
    until self.items.select{|item| item == title}.length == quantity
      self.items << title
      self.prices << price
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      self.total -= (self.total/(100/@discount))
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def prices
    @prices
  end

  def void_last_transaction

  end

end
