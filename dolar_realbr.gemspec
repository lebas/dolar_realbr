# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dolar_realbr/version'

Gem::Specification.new do |spec|
  spec.name          = "dolar_realbr"
  spec.version       = DolarRealbr::VERSION
  spec.authors       = ["Eduardo Alencar"]
  spec.email         = ["lebas66@gmail.com"]

  spec.summary       = %q{Conversão de moedas, dada uma determinada data, entre Dolar <-> Real e Euro <-> Real.}
  spec.description   = %q{Conversão de moedas, dada uma determinada data, entre Dolar <-> Real e Euro <-> Real.}
  spec.homepage      = "https://facebook.com/Solution4Mac"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_dependency "savon",  "~> 2.0"
  spec.add_dependency "brazilian-rails"
end
