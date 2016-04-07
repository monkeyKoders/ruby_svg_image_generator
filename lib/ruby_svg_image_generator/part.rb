module RubySvgImageGenerator
  class Theme
    class Part
      def initialize(name, options={})
        @name = name
      end

      def get_matrix
        self.class::MATRICES[0]
      end

      def get_random_matrix
        self.class::MATRICES[rand(self.class::MATRICES.length)]
      end
    end
  end
end
