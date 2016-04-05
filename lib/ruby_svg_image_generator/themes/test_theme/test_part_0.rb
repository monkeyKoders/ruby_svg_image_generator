module RubySvgImageGenerator
  module TestTheme

    class TestPart0 < RubySvgImageGenerator::Part

      MATRICES = [
        [
          [ "#ffffff", "#ffffff", "#ffffff", "#ffffff" ],
          [ 0, 0, 0, 0 ],
          [ 0, 0, 0, 0 ]
        ],[
          [ 0, 0, 0, 0 ],
          [ 0, 0, 0, 0 ],
          [ "#ffffff", "#ffffff", "#ffffff", "#ffffff" ]
        ],[
          [ 0, 0, 0, 0 ],
          [ "#ffffff", "#ffffff", "#ffffff", "#ffffff" ],
          [ 0, 0, 0, 0 ]
        ]
      ]

      def initialize options={}
        super "test_part_0"
        @matrices = MATRICES
      end

    end

  end
end
