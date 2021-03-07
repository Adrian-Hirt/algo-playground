module Algorithms
  module ArraySorting
    module Bubblesort
      def self.sort!(array)
        (1..array.count).reverse_each do |n|
          (0..n-2).each do |i|
            if (array[i] <=> array[i+1]) == 1
              swap(array, i, i+1)
            end
          end
        end
        array
      end

      def self.sort(array)
        dup_array = array.dup
        sort!(dup_array)
      end

      private

      def self.swap(array, idx_a, idx_b)
        temp = array[idx_a]
        array[idx_a] = array[idx_b]
        array[idx_b] = temp
      end
    end
  end
end
