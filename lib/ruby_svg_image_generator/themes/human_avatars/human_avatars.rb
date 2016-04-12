Dir.glob(File.dirname(File.absolute_path(__FILE__)) + '/*.rb') {|file| require file}


module RubySvgImageGenerator
  class HumanAvatars < RubySvgImageGenerator::Theme

    def initialize options={}
      super "human avatars", 7, 8, options
      @parts = [] << Face.new << Hair.new << Eyes.new << Mouth.new
    end

  end
end
