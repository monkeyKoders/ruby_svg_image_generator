module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    class OverFace < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#E6AE80", "#EFCDB0"]
      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0],
          [ 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0],
          [ 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0],
          [ 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0],
          [ 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0],
          [ 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0],
          [ 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0],
          [ 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
        ]
      ]

      def initialize options={}
        super "OverFace"
      end

    end

  end
end
