APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), 'lib/*.rb', '..'))
$: << File.join(APP_ROOT, 'lib/alchemy_language')

require 'rest-client'
require 'json'
require 'pry'
require 'watson_language_translator'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }
