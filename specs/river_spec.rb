require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class TestRiver < MiniTest::Test

def setup
  @salmon_fish = Fish.new("salmon")
  @trout_fish = Fish.new("trout")

  @fish = [@salmon_fish, @trout_fish]

  @amazon_river = River.new("Amazon", @fish)
end

def test_get_river_name
  assert_equal("Amazon", @amazon_river.name)
end

def test_get_fish_count
  assert_equal(2, @amazon_river.fish_count)
end

end
