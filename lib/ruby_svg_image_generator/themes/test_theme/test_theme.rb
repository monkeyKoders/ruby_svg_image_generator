
Dir.glob(File.dirname(File.absolute_path(__FILE__)) + '/*.rb') {|file| require file }

module RubySvgImageGenerator
  class TestTheme < RubySvgImageGenerator::Theme

    def initialize options={}
      super "test theme", options
      @parts = [] << TestPart0.new << TestPart1.new
    end

  end
end
