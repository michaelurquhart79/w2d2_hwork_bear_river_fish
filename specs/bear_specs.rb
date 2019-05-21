require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTests < Minitest::Test

  def setup
    @bear1 = Bear.new('Yogi', 'Grizzly')
    @bear2 = Bear.new('Bernie','Brown')
    fish1 = Fish.new('Nemo')
    @fish2 = Fish.new('Jaws')
    @fish3 = Fish.new('Goldie')
    fish4 = Fish.new('Freddie')
    fish_array = [fish1, @fish2, @fish3, fish4]
    @river1 = River.new('Amazon',fish_array)
  end

  def test_get_bear_name
    bear_name = @bear1.name
    assert_equal('Yogi',bear_name)
  end

  def test_get_bear_stomach
    bear_stomach = @bear2.stomach
    assert_equal([],bear_stomach)
  end

  def test_take_fish
    @bear1.take_fish(@fish2,@river1)
    number_of_fish_in_stomach = @bear1.stomach.count
    assert_equal(1, number_of_fish_in_stomach)
    number_of_fish_in_river = @river1.fish_stock.count
    assert_equal(3, number_of_fish_in_river)
  end

  def test_bear_roar
    assert_equal("ROAR!", @bear2.roar)
  end

  def test_food_eaten_count__empty
    assert_equal(0, @bear1.food_eaten_count)
  end

  def test_food_eaten_count__after_food
    @bear2.take_fish(@fish2,@river1)
    @bear2.take_fish(@fish3,@river1)
    assert_equal(2, @bear2.food_eaten_count)
  end

end
