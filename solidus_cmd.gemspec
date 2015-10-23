# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'solidus_cmd/version'

Gem::Specification.new do |spec|
  spec.name          = "solidus_cmd"
  spec.version       = SolidusCmd::VERSION
  spec.authors       = ["Peter Berkenbosch"]
  spec.email         = ["peter@pero-ict.nl"]

  spec.summary       = %q{Solidus command line utility for extension generation}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/pero-ict-solutions/solidus_cmd"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor', '~> 0.14'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
