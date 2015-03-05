# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
	# metadata
	s.name        = 'viewable'
	s.version     = '0.5.7'
	s.licenses    = ['MIT']
	s.summary     = %q{a viewings calendar gem for rails 4.0}
	s.description = %q{Viewable is a Rails 4.0 gem that enables you to add resource viewing functionality to your Rails application. A resource can be anything that is viewable e.g. function room, conference hall. }
	s.authors     = ["Tom Cox", "crmis"]
	s.email       = 'tom.jcox@icloud.com'
	s.homepage    = 'https://github.com/crmis/viewable-gem'

	# file settings
	# This gem will work with 1.9.5 or greater...
	s.required_ruby_version = '>= 1.9.5'
	s.files         = `git ls-files`.split($/)
	s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
	s.test_files    = s.files.grep(%r{^(test|spec|features)/})
	s.require_paths = ["lib","lib/viewable","lib/viewable/generators", "lib/viewable/generators/viewable"]

	# development dependencies
	s.add_development_dependency 'bundler', '~> 1.8'
	s.add_development_dependency 'rake', '~> 10.4'

	# runtime dependencies
	s.add_dependency 'jbuilder', '~> 2.0'
	s.add_dependency 'rails_12factor', '~> 0.0.3'
end
