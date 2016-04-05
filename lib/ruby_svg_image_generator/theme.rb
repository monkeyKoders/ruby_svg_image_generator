module RubySvgImageGenerator
  class Theme

    def initialize name, options={}
      @name = name
      @parts = []
      @matrix = [[]]
    end

    def get_matrix
      @matrix
    end

    def get_random_matrix
      temp_parts = []
      @parts.each do |part|
        temp_parts << part.get_random_matrix
      end

      matrix = []
      temp_parts.each do |part|
        part.count.times do |col|
          matrix[col] ||= Array.new(part[col].count, "#ffffff")
          part[col].count.times do |row|
            if part[col][row]!= 0
              matrix[col][row] = part[col][row]
            end
          end
        end
      end
      matrix
    end

    def get_parts
      @parts
    end

  end
end
