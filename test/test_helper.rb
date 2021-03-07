require 'minitest/autorun'
require_relative '../algorithms/array_sorting/bubblesort'

module Algorithms
  module ArraySorting
    class ArraySortTest < Minitest::Test
      def assert_sorted(array)
        sorted_array = array.sort
        assert_equal(array, sorted_array)
      end
    end
  end
end