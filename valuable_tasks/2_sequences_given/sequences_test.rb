require_relative 'sequences'
require 'test/unit'
require 'pry'
 
class SequenceTest < Test::Unit::TestCase
  def test_sequence
    assert_equal(2, sequence_b(1))
    assert_equal(1, sequence_a(1))
    assert_equal(3, sequence_b(2))
    assert_equal(10, sequence_b(3))
    assert_equal(37, sequence_b(4))

    assert_equal(smallest_diff(20), 3)
  end
end
