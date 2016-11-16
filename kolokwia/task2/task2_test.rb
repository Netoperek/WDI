require_relative 'task2'
require 'test/unit'
require 'pry'

class Task2Test < Test::Unit::TestCase
  def test_task2
    string_subsets('a2b', '', 0)
    assert_equal(['2', '2b', 'a', 'a2', 'a2b', 'ab', 'b'], $subsets.sort)
  end
end
