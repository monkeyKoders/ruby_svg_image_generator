module RubySvgImageGenerator
  class Part

    def initialize name, options={}
      @name = name
      @matrices = []
    end

    def get_matrix
      return @matrices[0]
    end

    def get_random_matrix
      return @matrices[rand(@matrices.length)]
    end

  end
end
