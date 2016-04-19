Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

module RubySvgImageGenerator
  class TestTheme < RubySvgImageGenerator::Theme

    def initialize 
      super "test theme", 3, 3
      @parts = [] << TestPart0.new << TestPart1.new
    end

  end
end
