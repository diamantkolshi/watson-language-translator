APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), 'lib/*.rb', '..'))
$: << File.join(APP_ROOT, 'lib/watson-language-translator')

require 'rest-client'
require 'json'
require 'pry'
require 'watson-language-translator'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
