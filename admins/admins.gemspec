$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "admins/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "admins"
  s.version     = Admins::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = "http://example.com"
  s.summary     = "Summary of Admins."
  s.description = "Description of Admins."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"

  s.add_development_dependency "pg"
end
