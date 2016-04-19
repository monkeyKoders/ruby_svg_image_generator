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

      def initialize
        super "test_part_1"
      end

    end

  end
end
