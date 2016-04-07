module RubySvgImageGenerator
  class TestTheme < RubySvgImageGenerator::Theme

    class TestPart0 < RubySvgImageGenerator::Theme::Part

      MATRICES = [
        [
          [ "#000", "#000", "#000", "#000" ],
          [ 0, 0, 0, 0 ],
          [ 0, 0, 0, 0 ]
        ],[
          [ 0, 0, 0, 0 ],
          [ 0, 0, 0, 0 ],
          [ "#000", "#000", "#000", "#000" ]
        ],[
          [ 0, 0, 0, 0 ],
          [ "#000", "#000", "#000", "#000" ],
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
