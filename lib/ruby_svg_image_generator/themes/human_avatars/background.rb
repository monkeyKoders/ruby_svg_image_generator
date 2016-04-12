module RubySvgImageGenerator
  class HumanAvatars < RubySvgImageGenerator::Theme

    class Background < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#91E3B5", "#62DB5C", "#91E3DB", "#E68585", "#dddddd"]

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

      def initialize options={}
        super "Eyes"
      end

    end

  end
end
