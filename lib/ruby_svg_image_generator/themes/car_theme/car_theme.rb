
Dir.glob(File.dirname(File.absolute_path(__FILE__)) + '/*.rb') {|file| require file }

module RubySvgImageGenerator
  class CarTheme < RubySvgImageGenerator::Theme

    def initialize options={}
      super "Car theme", options
      @parts = [] << Wheels.new << BodyWork.new << Roof.new
    end

  end
end
