require "set"
require "minitest/autorun"

def two_sum(list, k)
  set_list = Set.new(list)
  list.any? { |el| set_list.include?(k - el) }
end

class Tests < Minitest::Test
  def test_example_one
    assert_equal true, two_sum([10, 15, 3, 7], 18)
    assert_equal false, two_sum([], 1)
    assert_equal false, two_sum([3, 10, 3, 2], 222)
  end
end
