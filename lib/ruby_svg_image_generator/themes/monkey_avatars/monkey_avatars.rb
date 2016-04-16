Dir.glob(File.dirname(File.absolute_path(__FILE__)) + '/*.rb') {|file| require file}


module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    def initialize options={}
      super "monkey avatars", 11, 12, options
      @parts = [] << Background.new << Face.new << OverFace.new << Ears.new << Mouth.new << Eyes.new << Nose.new << Hair.new
    end

  end
end
