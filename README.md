# RubySvgImageGenerator

[![Build Status](https://travis-ci.org/monkeyKoders/ruby_svg_image_generator.svg?branch=master)](https://travis-ci.org/monkeyKoders/ruby_svg_image_generator)
[![Coverage Status](https://coveralls.io/repos/github/monkeyKoders/ruby_svg_image_generator/badge.svg?branch=master)](https://coveralls.io/github/monkeyKoders/ruby_svg_image_generator?branch=master)
[![Code Climate](https://codeclimate.com/github/monkeyKoders/ruby_svg_image_generator/badges/gpa.svg)](https://codeclimate.com/github/monkeyKoders/ruby_svg_image_generator)

ruby_svg_image_generator is a great gem, created for you but especially for your web application users.

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

Create a random svg image saved on the file system.

    RubySvgImageGenerator.create_random_and_save("file_name.svg", "file_name, options={})

Create a custom svg image saved on the file system.

    RubySvgImageGenerator.create_and_save("file_name.svg", "file_name, options={})

    where **options** is the theme constant name selected to create your svg avatar.

    Example:
      options{:theme => T_HUMAN_AVATARS}

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/santiriera626/ruby_randimage. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
