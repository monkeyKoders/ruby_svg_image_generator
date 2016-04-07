module RubySvgImageGenerator
  class HumanAvatars < RubySvgImageGenerator::Theme

    class Mouth < RubySvgImageGenerator::Theme::Part

      A = "#BD3C4D"

      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, A, A, A, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0]
        ],[
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, A, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, 0, 0, 0, 0, 0]
        ]
      ]

      def initialize options={}
        super "Mouth"
        @matrices = MATRICES
      end

    end

  end
end
