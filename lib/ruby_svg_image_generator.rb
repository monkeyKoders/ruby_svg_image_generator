require 'ruby_svg_image_generator/version'
require 'ruby_matrix_to_svg'

require 'ruby_svg_image_generator/theme'
require 'ruby_svg_image_generator/part'
require 'ruby_svg_image_generator/color_part'

require 'ruby_svg_image_generator/themes/face_avatars/face_avatars'
require 'ruby_svg_image_generator/themes/human_avatars/human_avatars'
require 'ruby_svg_image_generator/themes/monkey_avatars/monkey_avatars'
require 'ruby_svg_image_generator/themes/landscape_theme/landscape_theme'
require 'ruby_svg_image_generator/themes/test_theme/test_theme'

module RubySvgImageGenerator

  T_HUMAN_AVATARS = :HumanAvatars
  T_FACE_AVATARS = :FaceAvatars
  T_MONKEY_AVATARS = :MonkeyAvatars
  T_LANDSCAPE_THEME = :LandscapeTheme
  T_TEST_THEME = :TestTheme

  DEFAULT_OPTIONS = {
    :theme => T_TEST_THEME
  }

  THEMES = [T_HUMAN_AVATARS, T_FACE_AVATARS, T_TEST_THEME, T_MONKEY_AVATARS]

  # create an image svg and save it to the given filename
  #
  # Example:
  #   >> RubySvgImageGenerator.create_and_save('test_identicon.png', title, options)
  #   => result (Fixnum)
  #
  # @param filename [string] the full path and filename to save the image svg to
  # @param title [string] the image svg title
  # @param options [hash] additional options for the image
  #
  def self.create_and_save(filename, title, options={})

    # create the svg image string
    svg = create(title, options)

    # save svg to file filename
    File.open(filename, 'wb') { |f| f.write(svg) }

  end

  # create an image svg
  #
  # Example:
  #   >> RubySvgImageGenerator.create(title, options)
  #   => result (String)
  #
  # @param title [string] the image svg title
  # @param options [hash] additional options for the image
  #
  def self.create(title, options={})

    options = DEFAULT_OPTIONS.merge(options)

    theme = RubySvgImageGenerator.const_get(options[:theme]).new

    # generate the cells matrix with image
    matrix = theme.get_matrix options[:parts]

    # generate and return the svg string with matrix values
    RubyMatrixToSvg.matrix_to_svg title, matrix
  end

  # create a random image svg and save it to the given filename
  #
  # Example:
  #   >> RubySvgImageGenerator.create_random_and_save('test_identicon.png', title, options)
  #   => result (Fixnum)
  #
  # @param filename [string] the full path and filename to save the image svg to
  # @param title [string] the image svg title
  # @param options [hash] additional options for the image
  #
  def self.create_random_and_save(filename, title, options={})

    # create the svg image string
    svg = create_random(title, options)

    # save svg to file filename
    File.open(filename, 'wb') { |f| f.write(svg) }

  end

  # create a random image svg
  #
  # Example:
  #   >> RubySvgImageGenerator.create_random( title, options)
  #   => result (String)
  #
  # @param title [string] the image svg title
  # @param options [hash] additional options for the image
  #
  def self.create_random(title, options={})

    options = DEFAULT_OPTIONS.merge(options)

    theme = RubySvgImageGenerator.const_get(options[:theme]).new

    # generate the cells matrix with image
    matrix = theme.get_random_matrix

    # generate and return the svg string with matrix values
    RubyMatrixToSvg.matrix_to_svg title, matrix
  end

  # create a random image svg
  #
  # Example:
  #   >> RubySvgImageGenerator.get_theme_instance( RubySvgImageGenerator::T_HUMAN_AVATARS)
  #   => result (Theme)
  #
  # @param theme [constant] the image svg title
  #
  def self.get_theme_instance theme
    return RubySvgImageGenerator.const_get(theme).new
  end

end
