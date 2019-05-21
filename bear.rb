class Bear

  attr_reader :name, :stomach

  def initialize(name,type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(fish,river)
    @stomach.push(fish)
    river.remove_fish(fish)
  end
end
