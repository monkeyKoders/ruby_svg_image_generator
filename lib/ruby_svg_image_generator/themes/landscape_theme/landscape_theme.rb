Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

module RubySvgImageGenerator
  class LandscapeTheme < RubySvgImageGenerator::Theme

    def initialize
      super "landscape", 24, 16
      @parts = [] << Background.new << Sun.new << Ground.new << Flowers.new <<
      CloudsBack.new << MountainsBack.new << MountainsFront.new << River.new <<
      CloudsFront.new << Trees1.new << Trees2.new << Trees3.new
    end

  end
end
