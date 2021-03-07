module Algorithms
  module ArraySorting
    module Bubblesort
      # Inplace sorting, replaces original array and
      # returns nil
      def self.sort!(array)
        (1..array.count).reverse_each do |n|
          (0..n-2).each do |i|
            if (array[i] <=> array[i+1]) == 1
              swap(array, i, i+1)
            end
          end
        end
        return nil
      end

      # Returns the sorted array, leaves original array untouched
      def self.sort(array)
        dup_array = array.dup
        sort!(dup_array)
        return dup_array
      end

      private

      def self.swap(array, idx_a, idx_b)
        temp = array[idx_a]
        array[idx_a] = array[idx_b]
        array[idx_b] = temp
        return nil
      end
    end
  end
end
