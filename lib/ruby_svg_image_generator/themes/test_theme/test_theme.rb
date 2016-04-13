Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }
#Dir.glob(File.dirname(File.absolute_path(__FILE__)) + '/*.rb') {|file| require file }

module RubySvgImageGenerator
  class TestTheme < RubySvgImageGenerator::Theme

    def initialize options={}
      super "test theme", 3, 3, options
      @parts = [] << TestPart0.new << TestPart1.new
    end

  end
end
