# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootswatch/version'

Gem::Specification.new do |spec|
  spec.name          = "bootswatch"
  spec.version       = Bootswatch::VERSION
  spec.authors       = ["mkhairi"]
  spec.email         = ["khairi@labs.my"]
  spec.summary       = %q{Bootswatches sass for rails.}
  spec.description   = %q{Bootswatches in your Rails asset pipeline.}
  spec.homepage      = "https://github.com/mkhairi/bootswatch-sass"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'autoprefixer-rails', '>= 6.0.3'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
