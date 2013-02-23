# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mr_version"

Gem::Specification.new do |s|
  s.name          = "mr_version"
  s.version       = MrVersion::VERSION.to_s
  s.platform      = Gem::Platform::RUBY
  s.summary       = "Stupid simple Ruby software versioning"
  s.homepage      = "http://github.com/cheapRoc/mr_version"
  s.authors       = ['cheapRoc']
  s.email         = 'cheapRoc@gmail.com'

  s.rubyforge_project = "mr_version"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  s.require_paths = ["lib"]

  s.extra_rdoc_files  = [ "README.md", "MIT-LICENSE" ]
  s.rdoc_options      = [ "--charset=UTF-8" ]

  s.required_rubygems_version = ">= 1.3.6"

  #s.add_dependency "rake"

  s.add_development_dependency "bones"
  s.add_development_dependency "bundler", "~> 1.0"
  s.add_development_dependency "bacon"
  s.add_development_dependency "facon"
  s.add_development_dependency "simple_cov"
  s.add_development_dependency "autotest-standalone"
  s.add_development_dependency "autotest-fsevent"

  s.description = <<-DESC
  Stupid simple Ruby software versioning for your projects.
  DESC

  # s.post_install_message =<<-CHANGELOG.gsub(/^  /, '')
  # FIXME Post installation here...
  # CHANGELOG
end
