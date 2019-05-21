class River

attr_reader :name, :fish_stock

  def initialize(name,fish_stock)
    @name = name
    @fish_stock = fish_stock
  end

  def remove_fish(fish)
    @fish_stock.delete(fish)
  end


end

# A river should have a name e.g. "Amazon"
#
# A river should hold many fish
