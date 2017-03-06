# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'watson-language-translator/version'

Gem::Specification.new do |spec|
  spec.name         = "watson-language-translator"
  spec.version      = WatsonLanguage::VERSION
  spec.authors      = ["Diamant"]
  spec.email        = ["diamantkolshi@gmail.com"]
  spec.summary      = "Watson Language!"
  spec.description  = "Watson Language Translate content into multiple languages"
  spec.homepage     = 'https://github.com/diamantkolshi/watson-language-translator'
  spec.license      = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.files         = Dir.glob("lib/**/*") + %w(README.md)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
