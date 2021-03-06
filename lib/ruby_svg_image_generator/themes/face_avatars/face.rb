module RubySvgImageGenerator
  class FaceAvatars < RubySvgImageGenerator::Theme

    class Face < RubySvgImageGenerator::Theme::ColorPart

      COLORS = ["#574130", "#EDB07B", "#73592F", "#FADFB4"]
      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 1, 1, 1, 0, 0],
          [ 0, 1, 1, 1, 1, 1, 0],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 0, 1, 1, 1, 1, 1, 0],
          [ 0, 0, 1, 1, 1, 0, 0],
          [ 0, 0, 1, 1, 1, 0, 0]
        ],[
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 1, 1, 1, 0, 0],
          [ 0, 1, 1, 1, 1, 1, 0],
          [ 1, 1, 1, 1, 1, 1, 1],
          [ 0, 1, 1, 1, 1, 1, 0],
          [ 0, 1, 1, 1, 1, 1, 0],
          [ 0, 0, 1, 1, 1, 0, 0],
          [ 0, 0, 0, 1, 0, 0, 0]
        ]
      ]

      def initialize
        super "Face"
      end

    end

  end
end
