module Viewable
	module Generators
		class CssGenerator < Rails::Generators::Base
			source_root File.expand_path('../templates/assets/stylesheets', __FILE__)
			def generate_css
				template "custom.css", "app/assets/stylesheets/viewable_custom.css"
				template "fullcalendar.css", "app/assets/stylesheets/viewable_fullcalendar.css"
			end
		end
	end
end
