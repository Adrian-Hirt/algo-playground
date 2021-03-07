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

      def test_leave_original_array
        input = [42, 1, 3, 1, 100]
        original_input = input.dup
        output = Algorithms::ArraySorting::Bubblesort.sort(input)
        assert_sorted(output)
        assert_equal(input, original_input)
      end

      def test_inplace_sort
        input = [42, 1, 3, 1, 100]
        original_input = input.dup
        Algorithms::ArraySorting::Bubblesort.sort!(input)
        assert_sorted(input)
  
        refute_equal(input, original_input)
      end
    end
  end
end
