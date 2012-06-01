# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Marvin Frick"]
  gem.email         = ["frick@informatik.uni-luebeck.de"]
  gem.description   = %q{Ruby implementation of WiseML}
  gem.summary       = %q{Use this gem to read and write a WiseML document}
  gem.homepage      = ""

  gem.add_dependency('nokogiri')
  gem.add_dependency('roxml')

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "wiseml-ruby"
  gem.require_paths = ["lib"]
  gem.version       = WiseML::VERSION
end
