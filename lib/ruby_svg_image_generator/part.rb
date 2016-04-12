module RubySvgImageGenerator
  class Theme
    class Part
      def initialize(name, options={})
        @name = name
      end

      def get_matrix index
        self.class::MATRICES[index]
      end

      def get_random_matrix
        self.class::MATRICES[rand(self.class::MATRICES.length)]
      end

      def name
        @name
      end
    end
  end
end
