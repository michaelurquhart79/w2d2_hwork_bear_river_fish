require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class FishTests < Minitest::Test

  def setup
    @fish1 = Fish.new('Nemo')
  end

  def test_fish_has_name
    result = @fish1.name
    assert_equal('Nemo',result)
  end



end
