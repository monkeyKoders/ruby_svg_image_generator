module RubySvgImageGenerator
  class TestTheme < RubySvgImageGenerator::Theme

    class TestPart1 < RubySvgImageGenerator::Theme::Part

      MATRICES = [
        [
          [ 0, 0, "#ff0000", 0 ],
          [ 0, 0, "#ff0000", 0 ],
          [ 0, 0, "#ff0000", 0 ]
        ],[
          [ 0, "#ff0000", 0, 0 ],
          [ 0, "#ff0000", 0, 0 ],
          [ 0, "#ff0000", 0, 0 ]
        ],[
          [ "#ff0000", 0, 0, 0 ],
          [ "#ff0000", 0, 0, 0 ],
          [ "#ff0000", 0, 0, 0 ]
        ],[
          [  0, 0, 0, "#ff0000" ],
          [  0, 0, 0, "#ff0000" ],
          [  0, 0, 0, "#ff0000" ]
        ]
      ]

      def initialize options={}
        super "test_part_1"
        @matrices = MATRICES
      end

    end

  end
end
