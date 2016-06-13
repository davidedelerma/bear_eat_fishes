require 'minitest/autorun'
require_relative ("../fish")

class TestFish < Minitest::Test
  def test_get_fish_name
    fish1=Fish.new("Nemo") 
    assert_equal("Nemo",fish1.name)
  end  
end