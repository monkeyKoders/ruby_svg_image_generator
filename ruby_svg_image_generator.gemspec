# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_svg_image_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_svg_image_generator"
  spec.version       = RubySvgImageGenerator::VERSION
  spec.authors       = ["santiriera626" , "camumino", "franx0"]
  spec.email         = ["santiriera626@gmail.com", "camumino@gmail.com", "francisco.moya.martinez@gmail.com"]

  spec.summary       = "It is a SVG avatars generator gem based on themes."
  spec.description   = "It is a SVG avatars generator gem based on themes which can be designed by users but also you can find some great pre-designed themes on it."
  spec.homepage      = "https://github.com/monkeyKoders/ruby_svg_image_generator"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', "~> 3.4.0"

  spec.add_dependency "ruby_matrix_to_svg", "~> 0.0.1"


end
