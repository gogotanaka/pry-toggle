# coding: utf-8
($LOAD_PATH << File.expand_path("../lib", __FILE__)).uniq!
require 'pry_toggle/version'

Gem::Specification.new do |spec|
  spec.name          = "pry-toggle"
  spec.version       = PryToggle::VERSION
  spec.authors       = ["gogotanaka"]
  spec.email         = ["mail@tanakakazuki.com"]
  spec.summary       = %q{ Toggle "binding.pry" easily from command line. }
  spec.description   = %q{ Toggle "binding.pry" easily from command line. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*', 'bin/*', 'test/**/*']
  spec.executables   = ['pry-toggle']
  spec.test_files    = Dir["test/**/*_test.rb"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
