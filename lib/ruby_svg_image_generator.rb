require 'ruby_svg_image_generator/version'
require 'ruby_matrix_to_svg'

require 'ruby_svg_image_generator/theme'
require 'ruby_svg_image_generator/part'

require 'ruby_svg_image_generator/themes/human_avatars/human_avatars'
require 'ruby_svg_image_generator/themes/test_theme/test_theme'
require 'ruby_svg_image_generator/themes/car_theme/car_theme'
require 'debugger'

module RubySvgImageGenerator

  T_HUMAN_AVATARS = :HumanAvatars
  T_TEST_THEME = :TestTheme
  T_CAR_THEME = :CarTheme

  DEFAULT_OPTIONS = {
    :theme => T_TEST_THEME
  }

  # create a random image svg and save it to the given filename
  #
  # Example:
  #   >> RubyRandimage.create_and_save_file('test_identicon.png', options)
  #   => result (Fixnum)
  #
  # @param filename [string] the full path and filename to save the image svg to
  # @param options [hash] additional options for the image
  #
  def self.create_and_save_file(filename, title, options={})

    # create the svg image string
    svg = create(title, options)

    # save svg to file filename
    File.open(filename, 'wb') { |f| f.write(svg) }

  end

  # create a random image svg and return it as a svg string
  #
  # Example:
  #   >> RubyRandimage.create(options)
  #   => (String)
  #
  # @param options [hash] additional options for the image
  #
  def self.create(title, options={})

    options = DEFAULT_OPTIONS.merge(options)

    # TODO: [srira] Mejorar estructura de clases y modulos para no tener que repetir el namespace del modulo
    theme = RubySvgImageGenerator.const_get(options[:theme]).new options

    # generate the cells matrix with image
    matrix = theme.get_random_matrix

    # generate and return the svg string with matrix values
    RubyMatrixToSvg.matrix_to_svg title, matrix
  end

end
