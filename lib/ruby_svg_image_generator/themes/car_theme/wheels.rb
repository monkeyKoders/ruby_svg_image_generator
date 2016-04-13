module RubySvgImageGenerator
  class CarTheme < RubySvgImageGenerator::Theme

    class Wheels < RubySvgImageGenerator::Theme::Part

      A = "#247337"
      B = "#6978DB"
      C = "#73592F"
      F = "#FF0000"

      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, A, A, A, 0, 0, A, A, A, 0],
          [ 0, A, 0, A, 0, 0, A, 0, A, 0],
          [ 0, A, A, A, 0, 0, A, A, A, 0]
        ]
      ]

      def initialize options={}
        super "wheels"
        @matrices = MATRICES
      end

    end

  end
end
