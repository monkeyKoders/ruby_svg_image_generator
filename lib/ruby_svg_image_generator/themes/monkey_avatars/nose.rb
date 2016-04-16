module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    class Nose < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#000000"]

      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        ]
      ]

      def initialize options={}
        super "Nose"
      end

    end

  end
end
