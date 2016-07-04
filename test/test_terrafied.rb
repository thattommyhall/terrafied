require 'test_helper'
require 'minitest/autorun'

class TerrafiedTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Terrafied::VERSION
  end
end
