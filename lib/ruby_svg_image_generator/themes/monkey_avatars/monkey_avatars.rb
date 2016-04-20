Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    def initialize options={}
      super "monkey avatars", 13, 15, options
      @parts = [] << Background.new << Face.new << Skin.new << Makeup.new << Clothes.new << Eyes.new << Wearable.new << Mouth.new << Nose.new
    end

  end
end
