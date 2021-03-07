require_relative '../../test_helper'

module Algorithms
  module ArraySorting
    class BubblesortTest < ArraySortTest
      def test_empty_array
        input = []
        output = Algorithms::ArraySorting::Bubblesort.sort(input)
        assert_sorted(output)
      end

      def test_single_int_element_array
        input = [1]
        output = Algorithms::ArraySorting::Bubblesort.sort(input)
        assert_sorted(output)
      end

      def test_multiple_int_element_array
        input = [42, 1, 3, 1, 100]
        output = Algorithms::ArraySorting::Bubblesort.sort(input)
        assert_sorted(output)
      end

      def test_char_array
        input = ['c', 'a', 'd', 'b']
        output = Algorithms::ArraySorting::Bubblesort.sort(input)
        assert_sorted(output)
      end
    end
  end
end
