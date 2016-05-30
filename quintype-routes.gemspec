# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quintype/routes/version'

Gem::Specification.new do |spec|
  spec.name          = "quintype-routes"
  spec.version       = Quintype::Routes::VERSION
  spec.authors       = ["Tejas Dinkar"]
  spec.email         = ["tejas@gja.in"]

  spec.summary       = %q{Helps forward routes, and other things to help you get a Quintype app out}
  spec.homepage      = "https://github.com/quintype/quintype-routes"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rack-reverse-proxy', '~> 0.11.0'
  spec.add_dependency "rails", ">= 3.2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
