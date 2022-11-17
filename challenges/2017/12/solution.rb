# frozen_string_literal: true
module Year2017
  class Day12 < Solution
    # @input is available if you need the raw data input
    # Call `data` to access either an array of the parsed data, or a single record for a 1-line input file

    def part_1
      pipe[0].size  
    end

    def part_2
      pipe.values.uniq.count
    end

    def pipe
      h = {}
      data.each do |line|
        a, list = line.split(/\s<->\s/)
        h[a.to_i] = list.split(", ").map(&:to_i)
      end

      h.each do |k, list|
        list.each do |i|
          h[i] = (h[i] + list).uniq.sort
        end
      end

      h
    end

    private
      # Processes each line of the input file and stores the result in the dataset
      # def process_input(line)
      #   null
      # end

      # Processes the dataset as a whole
      # def process_dataset(set)
      #   set
      # end
  end
end
