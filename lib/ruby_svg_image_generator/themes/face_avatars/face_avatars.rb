Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

module RubySvgImageGenerator
  class FaceAvatars < RubySvgImageGenerator::Theme

    def initialize
      super "face avatars", 7, 8
      @parts = [] << Background.new << Face.new << Hair.new << Eyes.new << Mouth.new
    end

  end
end
