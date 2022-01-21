# -*- encoding: utf-8 -*-
require File.expand_path('../lib/zipline/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ram Dobson"]
  gem.email         = ["ram.dobson@solsystemscompany.com"]
  gem.description   = %q{a module for streaming dynamically generated zip files}
  gem.summary       = %q{stream zip files from rails}
  gem.homepage      = "http://github.com/fringd/zipline"

  gem.files         = `git ls-files`.split($\) - %w{.gitignore}
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "zipline"
  gem.require_paths = ["lib"]
  gem.version       = Zipline::VERSION
  gem.licenses      = ['MIT']

  gem.add_dependency 'actionpack', ['>= 3.2.1', '< 8.0']
  gem.add_dependency 'zip_tricks', ['>= 4.2.1', '< 6.0']
end
