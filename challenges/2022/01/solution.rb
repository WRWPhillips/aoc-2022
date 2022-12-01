# frozen_string_literal: true
module Year2022
  class Day01 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      get_filtered().max
    end

    def part_2
      get_filtered().max(3).reduce(:+)
    end

    def get_filtered
      data.chunk{ |n| 
        n > 0
      }.map{|arr| 
        arr[0]? arr[1].reduce(:+) : 0
      }    
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
