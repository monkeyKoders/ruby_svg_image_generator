# RubySvgImageGenerator

[![Build Status](https://travis-ci.org/monkeyKoders/ruby_svg_image_generator.svg?branch=master)](https://travis-ci.org/monkeyKoders/ruby_svg_image_generator)
[![Coverage Status](https://coveralls.io/repos/github/monkeyKoders/ruby_svg_image_generator/badge.svg?branch=master)](https://coveralls.io/github/monkeyKoders/ruby_svg_image_generator?branch=master)
[![Code Climate](https://codeclimate.com/github/monkeyKoders/ruby_svg_image_generator/badges/gpa.svg)](https://codeclimate.com/github/monkeyKoders/ruby_svg_image_generator)

ruby_svg_image_generator is a great gem, created for you but specially for your web application users.

It is a SVG avatars generator gem based on themes which can be designed by users but also you can find some great pre-designed themes on it.

## Demo App

We have implemented a demo app for you to try out: [Demo App](http://ruby_svg_generator.monkeykoders.net)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_svg_image_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_svg_image_generator

## Usage

Create a random svg image from selected theme

    RubySvgImageGenerator.create_random(title, options={})

    title: (String) Created SVG image name
    options: (Hash)
      -  theme: (String) Theme where you get the random image

    Example: RubySvgImageGenerator.create_random('awesome_random_avatar', {theme: RubySvgImageGenerator::T_MONKEY_AVATARS})


Create a random svg image from selected theme and save on the file system

    RubySvgImageGenerator.create_random_and_save(filename, title, options={})

    filename: (String): Created SVG image file name
    title: (String) Created SVG image name
    options: (Hash)
      -  theme: (String) Theme where you get the random image

    Example: RubySvgImageGenerator.create_random_and_save('image.svg', 'awesome_random_avatar', {theme: RubySvgImageGenerator::T_LANDSCAPE_THEME})

Create an image from selected theme and specific values for parts

    RubySvgImageGenerator.create(title, options={})

    title: (String) Created SVG image name
    options: (Hash)
      -  theme: (String) Theme where you get the image
      -  parts: (Array) Array of index of parts' values which compose the theme

    Example: RubySvgImageGenerator.create('awesome_avatar', {theme: RubySvgImageGenerator::T_FACE_AVATARS, parts: [0, 1, 5, 0, 1]})


Create an image from selected theme with specific values for parts and save on the file system

    RubySvgImageGenerator.create_and_save(filename, title, options={})

    filename: (String): Created SVG image file name
    title: (String) Created SVG image name
    options: (Hash)
      -  theme: (String) Theme where you get the image
      -  parts: (Array) Array of index of parts' values which compose the theme

    Example: RubySvgImageGenerator.create('face_avatar.svg', 'awesome_avatar', {theme: RubySvgImageGenerator::T_FACE_AVATARS, parts: [0, 1, 5, 0, 1]})

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/monkeyKoders/ruby_svg_image_generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
