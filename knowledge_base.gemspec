$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "knowledge_base/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "knowledge_base"
  s.version     = KnowledgeBase::VERSION
  s.authors     = ["Johannes Gorset"]
  s.email       = ["johannes@hyper.no"]
  s.homepage    = "http://github.com/hyperoslo/knowledge_Base"
  s.summary     = "Knowledge Base is a bunch of models for Ruby on Rails that you probably need to build your own"
  s.description = "Knowledge Base is a bunch of models for Ruby on Rails that you probably need to build your own"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*", "fixtures/**/*"]

  s.add_dependency "rails", "~> 4.0"
  s.add_dependency "friendly_id", "~> 5.0.0"
  s.add_dependency "publishable", "~> 1.0.1"
  s.add_dependency "carrierwave", "~> 0.10.0"
  s.add_dependency "embeddable", "~> 0.0.2"
  s.add_dependency "faker"
  s.add_dependency "mini_magick"

  s.add_development_dependency "pry-rails"
  s.add_development_dependency "hirb-unicode"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
end
