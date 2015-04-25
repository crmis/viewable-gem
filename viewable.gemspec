# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
	# Metadata
	s.name        = 'viewable'
	s.version     = '0.5.19'
	s.licenses    = ['MIT']
	s.summary     = "A viewings calendar gem for rails 4.0"
	s.description = "Viewable is a Rails 4.0 gem that enables you to add 'resource' viewing functionality to your Rails application. A resource can be anything that is viewable e.g. function room, conference hall."
	s.authors     = ["Tom Cox", "crmis"]
	s.email       = 'tom.jcox@icloud.com'
	s.homepage    = 'https://github.com/crmis/viewable-gem'

	# File settings
	s.files         = `git ls-files`.split($/)
	s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
	s.test_files    = s.files.grep(%r{^(test|spec|features)/})
	s.require_paths = ["lib","lib/viewable","lib/viewable/generators", "lib/viewable/generators/viewable"]

	# Development dependencies
	s.add_development_dependency 'bundler', '~> 1.9'
	s.add_development_dependency 'rake', '~> 10.4'

	# Runtime dependencies
	s.add_dependency 'jbuilder', '~> 2.0'
	s.add_dependency 'rails_12factor', '~> 0.0.3'
	s.add_dependency 'responders', '~> 2.0'
end
