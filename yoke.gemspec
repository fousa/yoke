# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yoke/version'

Gem::Specification.new do |spec|
  spec.name          = "yoke"
  spec.version       = Yoke::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Jelle Vandebeeck"]
  spec.email         = ["jelle@fousa.be"]
  spec.description   = %q{Alias your current directory for fast directory access.}
  spec.summary       = %q{Create an alias for the current directory with a small 'yoke' command. And when you're somewhere else just type the name of the create alias and you'll be cd'ed to the director.}
  spec.homepage      = "http://fousa.be/apps/yoke"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency 'thor', '0.18.1'
end
