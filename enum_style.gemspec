$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "enum_style/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enum_style"
  s.version     = EnumStyle::VERSION
  s.authors     = ["usestrict-jp"]
  s.email       = ["info@hackland.jp"]
  s.homepage    = "https://hackland.pro"
  s.summary     = "define enum style for rails"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_development_dependency "rails", "~> 5.2.1"
  s.add_development_dependency "mysql2"
end
