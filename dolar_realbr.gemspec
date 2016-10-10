# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dolar_realbr/version'

Gem::Specification.new do |spec|
  spec.name          = "dolar_realbr"
  spec.version       = DolarRealbr::VERSION
  spec.authors       = ["Eduardo Alencar"]
  spec.email         = ["lebas66@gmail.com"]

  spec.summary       = %q{Exchange rate Real ( Brazil )}
  spec.description   = %q{Exchange rate Real ( Brazil )}
  spec.homepage      = "https://facebook.com/Solution4Mac"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 11.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  
  spec.add_dependency "savon",  "~> 2.10"
  spec.add_dependency "brazilian-rails"
end
