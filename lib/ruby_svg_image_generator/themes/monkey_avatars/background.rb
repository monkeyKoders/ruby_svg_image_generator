module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    class Background < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#666F76", "#B3C2CE", "#B1D0AD", "#C2D59A"]
      MATRICES = [
        [
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
        ]
      ]

      def initialize options={}
        super "Background"
      end

    end

  end
end
