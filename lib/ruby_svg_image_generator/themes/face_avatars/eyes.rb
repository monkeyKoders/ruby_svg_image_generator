module RubySvgImageGenerator
  class FaceAvatars < RubySvgImageGenerator::Theme

    class Eyes < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#247337", "#6978DB", "#53552F", "#145D75", "#666666"]

      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 1, 0, 1, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0]
        ]
      ]

      def initialize
        super "Eyes"
      end

    end

  end
end
