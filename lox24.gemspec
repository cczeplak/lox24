lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'lox24/version'

Gem::Specification.new do |s|
  s.name        = 'lox24'
  s.version     = Lox24::GEM_VERSION
  s.date        = '2018-08-07'
  s.summary     = "Lox24 SMS Gateway"
  s.description = "Library to send text messages with the lox24.eu SMS gateway"
  s.authors     = ["Christoph Czeplak"]
  s.email       = 'czeplak@worklagoon.com'
  s.files       = Dir.glob("lib/**/*")
  s.homepage    = 'http://rubygems.org/gems/lox24'
  s.license     = 'MIT'
  s.add_runtime_dependency 'xml-simple', '~> 1.1'
end
