# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "feature_creep/version"

Gem::Specification.new do |s|
  s.name = "feature_creep-simple_strategy"
  s.version = FeatureCreep::SimpleStrategy::VERSION
  s.authors = ["Christian Trosclair"]
  s.email       = ["xn@hybridgroup.com"]
  s.description = "simple strategy implementation for feature_creep"
  s.summary = "simple strategy implementation for feature_creep"
  s.homepage = "https://github.com/hybridgroup/feature_creep-simple_strategy"

  s.require_paths = ["lib"]

  s.rubyforge_project = "feature_creep-simple_strategy"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec", "~> 2.10.0"
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "jeweler", "~> 1.6.4"
  s.add_development_dependency "bourne", "1.0"
  s.add_development_dependency "mocha", "0.9.8"
  s.add_development_dependency "pry", "0.9.10"

end
