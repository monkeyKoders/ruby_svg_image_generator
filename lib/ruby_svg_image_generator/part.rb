module RubySvgImageGenerator
  class Theme
    class Part
      include Enumerable
      def initialize(name, options={})
        @name = name
      end

      def each &block
        self.class::MATRICES.each{|part| yield part }
      end

      def [](index)
        return self.class::MATRICES[index]
      end

      def get_matrix index
        self[index]
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
