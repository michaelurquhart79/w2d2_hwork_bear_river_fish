require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTests < Minitest::Test

  def setup
    fish1 = Fish.new('Nemo')
    fish2 = Fish.new('Jaws')
    @fish3 = Fish.new('Goldie')
    fish4 = Fish.new('Freddie')
    @fish_array = [fish1, fish2, @fish3, fish4]
  end

  def test_get_river_name
    river1 = River.new('Amazon',@fish_array)
    assert_equal('Amazon', river1.name)
  end

  def test_get_fish_stock
    river1 = River.new('Amazon',@fish_array)
    fishies = river1.fish_stock
    assert_equal(@fish_array, fishies)
  end

  def test_remove_fish
    river1 = River.new('Amazon',@fish_array)
    river1.remove_fish(@fish3)
    fish_in_river = river1.fish_stock.count
    assert_equal(3,fish_in_river)
  end

end
