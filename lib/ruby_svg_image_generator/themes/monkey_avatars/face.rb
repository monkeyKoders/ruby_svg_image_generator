module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    class Face < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#6C3E18", "#966237"]
      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
          [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
          [ 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
          [ 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0],
          [ 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0],
          [ 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0],
          [ 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0]
        ]
      ]

      def initialize options={}
        super "Face"
      end

    end

  end
end
