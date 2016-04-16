module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    class Background < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#91E3B5", "#62DB5C", "#91E3DB", "#E68585", "#dddddd", "#000000"]

      MATRICES = [
        [
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
        ]
      ]

      def initialize options={}
        super "Background"
      end

    end

  end
end
