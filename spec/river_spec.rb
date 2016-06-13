require 'minitest/autorun'
require_relative ("../river")
require_relative ("../fish")

class TestRiver < Minitest::Test
  
  def setup
    fish1=Fish.new("Nemo")
    fish2=Fish.new("Giacomo")
    fish3=Fish.new("Carl")

    fishes=[fish1,fish2,fish3]

    @river=River.new(fishes) 
  end
  
  def test_get_fihes_name
    assert_equal("Nemo",@river.fishes[0].name)
  end  
end