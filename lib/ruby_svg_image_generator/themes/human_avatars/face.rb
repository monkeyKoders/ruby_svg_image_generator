module RubySvgImageGenerator
  module HumanAvatars

    class Face < RubySvgImageGenerator::Part

      A = "#574130"
      B = "#EDB07B"

      MATRICES = [
        [
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, A, A, A, 0, 0],
          [ 0, A, A, A, A, A, 0],
          [ A, A, A, A, A, A, A],
          [ A, A, A, A, A, A, A],
          [ 0, A, A, A, A, A, 0],
          [ 0, 0, A, A, A, 0, 0],
          [ 0, 0, A, A, A, 0, 0]
        ],[
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, A, A, A, 0, 0],
          [ 0, A, A, A, A, A, 0],
          [ A, A, A, A, A, A, A],
          [ 0, A, A, A, A, A, 0],
          [ 0, A, A, A, A, A, 0],
          [ 0, 0, A, A, A, 0, 0],
          [ 0, 0, 0, A, 0, 0, 0]
        ],[
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, B, B, B, 0, 0],
          [ 0, B, B, B, B, B, 0],
          [ B, B, B, B, B, B, B],
          [ B, B, B, B, B, B, B],
          [ 0, B, B, B, B, B, 0],
          [ 0, 0, B, B, B, 0, 0],
          [ 0, 0, B, B, B, 0, 0]
        ],[
          [ 0, 0, 0, 0, 0, 0, 0],
          [ 0, 0, B, B, B, 0, 0],
          [ 0, B, B, B, B, B, 0],
          [ B, B, B, B, B, B, B],
          [ 0, B, B, B, B, B, 0],
          [ 0, B, B, B, B, B, 0],
          [ 0, 0, B, B, B, 0, 0],
          [ 0, 0, 0, B, 0, 0, 0]
        ]
      ]




      def initialize options={}
        super "Face"
        @matrices = MATRICES
      end

    end

  end
end
