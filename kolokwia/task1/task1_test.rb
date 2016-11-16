require_relative 'task1'
require_relative 'task1_naive'
require 'test/unit'
require 'pry'
 
class Task1Test < Test::Unit::TestCase
  def test_task1_naive
    assert_equal(7, count_naive(10))
    assert_equal(32, count_naive(100))
    assert_equal(16, count_naive(30))
  end

  def test_task1_effective
    assert_equal(7, count(10))
    assert_equal(32, count(100))
    assert_equal(16, count(30))
  end
end
