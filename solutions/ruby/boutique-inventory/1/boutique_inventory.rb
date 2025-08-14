class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    (self.items.map {|item| item[:name]}).sort
  end

  def cheap
    self.items.select {|item| item[:price] < 30.to_f}
  end

  def out_of_stock
    self.items.select {|item| item[:quantity_by_size].empty?}
  end

  def stock_for_item(name)
    (self.items.find {|item| item[:name] == name})[:quantity_by_size]
  end

  def total_stock
    self.items.reduce(0) do |total, item|
      total+=total_stock_for_item(item[:name]).to_i
      total
    end
  end

  private

  attr_reader :items
  def total_stock_for_item(name)
    stock = 0
    stock_for_item(name).map do |_, value|
      stock += value
    end
    stock
  end
end