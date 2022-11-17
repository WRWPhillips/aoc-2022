# frozen_string_literal: true
require 'enumerator'

module Year2021
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      count_diff(data)
    end

    def part_2
      count_diff(by_threes(data))
    end

    def by_threes(arr)
      newArr = []
      arr.each_cons(3) do |a|
        newArr = newArr.push(a.sum)
      end
      newArr
    end

    def count_diff(arr)
      count = 0
      last_answer = arr[0]

      arr.each do |line|
        if line > last_answer
          count += 1
        end 
          last_answer = line      
      end 
    count  
    end

    private
      # Processes each line of the input file and stores the result in the dataset
      def process_input(line)
        line.to_i
      end

      # Processes the dataset as a whole
      # def process_dataset(set)
      #   set
      # end
  end
end
