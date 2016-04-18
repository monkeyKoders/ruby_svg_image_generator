Dir.glob(File.dirname(File.absolute_path(__FILE__)) + '/*.rb') {|file| require file}


module RubySvgImageGenerator
  class MonkeyAvatars < RubySvgImageGenerator::Theme

    def initialize options={}
      super "monkey avatars", 13, 15, options
      @parts = [] << Face.new << OverFace.new << Eyes.new << Mouth.new << Nose.new#<< Ears.new  << Hair.new
    end

  end
end
