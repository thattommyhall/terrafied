require 'test_helper'
require 'minitest/autorun'

class TerrafiedTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Terrafied::VERSION
  end

  def test_it_does_something_useful
    assert_equal({"provider" => {},
                  "resource" =>
                  {"type"=>{"name"=>{:spec=>true}}}},

                 Terrafied.build do
                   resource 'type', 'name', { spec: true }
                 end)
  end

  def test_it_errors_on_same
  end
end
