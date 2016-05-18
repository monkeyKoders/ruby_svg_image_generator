Dir[File.dirname(__FILE__)+'/*.rb'].each{ |f| require f }

module RubySvgImageGenerator
  class RobotAvatars < RubySvgImageGenerator::Theme

    def initialize
      super "robot avatars", 25, 24
      @parts = [] << Body.new << Chest.new << Legs.new << Head.new << Arms.new << Buttons.new << ButtonMiddle.new << Face.new << Antenna.new
    end

  end
end
