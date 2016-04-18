Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

#Dir.glob(File.dirname(File.absolute_path(__FILE__)) + '/*.rb') {|file| require file}

module RubySvgImageGenerator
  class HumanAvatars < RubySvgImageGenerator::Theme

    def initialize options={}
      super "human avatars", 13, 18, options
      @parts = [] << Background.new  << Body.new << Mouth.new << Eyes.new <<
      Hair.new << Shirt.new << Shoes.new << Pants.new << Complements.new
    end

  end
end
