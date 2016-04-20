Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

module RubySvgImageGenerator
  class HumanAvatars < RubySvgImageGenerator::Theme

    def initialize
      super "human avatars", 13, 18
      @parts = [] << Background.new  << Body.new << Mouth.new << Eyes.new <<
      Hair.new << Shirt.new << Shoes.new << Pants.new << Complements.new
    end

  end
end
