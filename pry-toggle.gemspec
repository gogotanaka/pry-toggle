# coding: utf-8
($LOAD_PATH << File.expand_path("../lib", __FILE__)).uniq!
require 'pry_toggle/version'

Gem::Specification.new do |spec|
  spec.name          = "pry-toggle"
  spec.version       = PryToggle::VERSION
  spec.authors       = ["gogotanaka"]
  spec.email         = ["mail@tanakakazuki.com"]
  spec.summary       = %q{ Toggle breakpoints "binding.pry" easily from command line. }
  spec.description   = %q{ All you need to do is copy message from command line like "main.rb:9" and run `pry-tgl main.rb:9` from command line!  }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*', 'bin/*', 'test/**/*']
  spec.executables   = ['pry-tgl', 'pry-toggle']
  spec.test_files    = Dir["test/**/*_test.rb"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
