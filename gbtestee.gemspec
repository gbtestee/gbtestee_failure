# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gbtestee/version'

Gem::Specification.new do |spec|
  spec.name          = "gbtestee"
  spec.version       = Gbtestee::VERSION
  spec.authors       = ["Kit Plummer"]
  spec.email         = ["kitplummer@gmail.com"]
  spec.summary       = %q{gbtestee.}
  spec.description   = %q{gbtestee.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "sinatra", "1.2.6"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
