module RubySvgImageGenerator
  class FaceAvatars < RubySvgImageGenerator::Theme

    class Background < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#91E3B5", "#62DB5C", "#91E3DB", "#E68585", "#dddddd", "#328463"]

      MATRICES = [
        [
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1]
        ]
      ]

      def initialize
        super "Background"
      end

    end

  end
end
