Gem::Specification.new do |s|
  s.name          = 'watson-language-translator'
  s.version       = '0.1.0'
  s.date          = '2017-03-03'
  s.summary       = "Watson Language!"
  s.description   = "Watson Language Translate content into multiple languages"
  s.authors       = ["Diamant Kolshi"]
  s.email         = 'diamantkolshi@gmail.com'
  s.files         =  Dir.glob("lib/**/*") + %w(README.md)
  s.homepage      = 'https://github.com/diamantkolshi/watson-language-translator'
  s.license       = 'MIT'
  s.require_path  = 'lib'
  s.executables = `git ls-files -- bin/*`.split('\n').map{ |f| File.basename(f) }
end 