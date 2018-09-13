# coding: utf-8
require File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'kafo_parsers', 'version')

Gem::Specification.new do |spec|
  spec.name          = "kafo_parsers"
  spec.version       = KafoParsers::VERSION
  spec.authors       = ["Marek Hulan"]
  spec.email         = ["mhulan@redhat.com"]
  spec.summary       = %q{Puppet module parsers}
  spec.description   = %q{This gem can parse values, validations, documentation, types, groups and conditions of parameters from your puppet modules}
  spec.homepage      = "https://github.com/theforeman/kafo_parsers"
  spec.license       = "GPL-3.0-or-later"

  spec.files         = `git ls-files`.split($/)
  spec.files         = Dir['lib/**/*'] + ['LICENSE.txt', 'Rakefile', 'README.md']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "< 11"
  spec.add_development_dependency "minitest", "~> 4.0"
  spec.add_development_dependency "simplecov", "< 0.9"
  spec.add_development_dependency "ci_reporter", "~> 1.9.0"

  # puppet manifests parsing
  spec.add_dependency 'rdoc', '>= 3.9.0'
  spec.add_dependency 'json'
end
