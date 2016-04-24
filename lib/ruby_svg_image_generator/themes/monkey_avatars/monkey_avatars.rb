Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    def initialize
      super "monkey avatars", 13, 15
      @parts = [] << Background.new << Skin.new << Face.new << Makeup.new << Clothes.new << ClothesNecks.new << Eyes.new << Hats.new << Wearable.new << Mouth.new << Nose.new
    end

  end
end
