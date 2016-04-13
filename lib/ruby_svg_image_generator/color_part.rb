module RubySvgImageGenerator
  class Theme
    class ColorPart < Part

      def initialize(name, options={})
        super name, options
      end

      def each &block
        matrix = []
        self.class::MATRICES.each do |m|
          matrix = Marshal.load(Marshal.dump(m))
          self.class::COLORS.each do |color|
            matrix = change_cells matrix, 1, color
            block.call matrix
          end
        end
      end

      def change_cells matrix, target_val, val
        matrix.count.times do |row|
          matrix[0].count.times do |col|
            matrix[row][col] = val if matrix[row][col]==target_val
          end
        end
        matrix
      end

      def [](index)
        matrix = Marshal.load(Marshal.dump(self.class::MATRICES[index/self.class::COLORS.count]))
        color = self.class::COLORS[index%self.class::COLORS.count]

        return change_cells matrix, 1, color
      end

      def get_matrix index
        self[index]
      end

      def get_random_matrix
        self[rand(self.count)]
      end

    end
  end
end
