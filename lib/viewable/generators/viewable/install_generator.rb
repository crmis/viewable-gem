module Viewable
	module Generators
		class InstallGenerator < Rails::Generators::Base
			argument :resource_name, :type => :string, :default => "resource"
			source_root File.expand_path("../", __FILE__)
			def install
				generate "viewable:resource_model #{resource_name}"
				generate "viewable:viewing_model #{resource_name}"
				generate "viewable:controller #{resource_name}"
				generate "viewable:views #{resource_name}"
				generate "viewable:js #{resource_name}"
				generate "viewable:css #{resource_name}"
				rake 'db:migrate'
			end
		end
	end
end
