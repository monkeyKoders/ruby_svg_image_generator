module RubySvgImageGenerator
  class Theme

    include Enumerable

    def initialize(name, n_cols, n_rows)
      @name = name
      @n_cols = n_cols
      @n_rows = n_rows
      @parts = []
      @matrix = [[]]
    end

    def each &block
      @parts.each{|part| yield part}
    end

    def [](index)
      return @parts[index]
    end

    def get_matrix parts
      l_parts = []
      parts.each_with_index  do |part, index|
        l_parts << self[index].get_matrix(part)
      end
      merge_parts(l_parts)
    end

    def get_random_matrix
      temp_parts = []
      @parts.each do |part|
        temp_parts << part.get_random_matrix
      end

      merge_parts(temp_parts)
    end

    def merge_parts(parts)
      matrix = []
      parts.each do |part|
        n_rows.times do |col|
          matrix[col] ||= Array.new(n_cols, "#ffffff")
          n_cols.times do |row|
            if part[col][row]!= 0
              matrix[col][row] = part[col][row]
            end
          end
        end
      end
      matrix
    end

    def name
      @name
    end

    def n_cols
      @n_cols
    end

    def n_rows
      @n_rows
    end

  end
end
