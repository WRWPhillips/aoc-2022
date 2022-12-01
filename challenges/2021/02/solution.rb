# frozen_string_literal: true
module Year2021
  class Day02 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
     x = 0
     y = 0
     
     data.each do |line|
      x = x + line[0]
      y = y + line[1]
     end 
    x * y 
    end

    def part_2
      nil
    end

    private
      # Processes each line of the input file and stores the result in the dataset
      def process_input(line)
        coord = line.split(" ");
        dir = coord[0]
        n = coord[1].to_i
        case dir
        when "forward"
          [n, 0]
        when "down"
          [0, -n]
        else
          [0, n]
        end  
      end

      # Processes the dataset as a whole
      # def process_dataset(set)
      #   set
      # end
  end
end
