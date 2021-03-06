# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shapeshift/version"

Gem::Specification.new do |spec|
  spec.name          = "shapeshift_io"
  spec.version       = Shapeshift::VERSION
  spec.authors       = ["Romanos Fessas"]
  spec.email         = ["romanos@fessas.com"]

  spec.summary       = %q{Shapeshift IO API Wrapper}
  spec.description   = %q{Simple Shapeshift API ruby wrapper}
  spec.homepage      = 'https://github.com/romanos/shapeshift-io'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'httparty', '>= 0.13'
  
end
