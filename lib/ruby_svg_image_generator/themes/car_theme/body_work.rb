module RubySvgImageGenerator
  class CarTheme < RubySvgImageGenerator::Theme

    class BodyWork < RubySvgImageGenerator::Theme::Part

      A = "#247337"
      B = "#6978DB"
      C = "#73592F"
      F = "#FF0000"

      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, B, B, B, B, 0, 0, 0, 0],
          [ 0, 0, B, B, B, B, B, B, B, 0],
          [ 0, B, B, B, B, B, B, B, B, 0],
          [ B, 0, 0, 0, B, B, 0, 0, 0, B],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        ]
      ]

      def initialize options={}
        super "body_work"
        @matrices = MATRICES
      end

    end

  end
end
