module viewable
	module Generators
		class JsGenerator < Rails::Generators::Base
			source_root File.expand_path('../templates/assets/javascript', __FILE__)
			argument :viewable_js_name, :type => :string, :default => "resource"
			def generate_viewable_js
				template "custom.js", "app/assets/javascripts/custom.js"
				template "fullcalendar.js", "app/assets/javascripts/fullcalendar.js"
				template "calendar-editable.js", "app/assets/javascripts/calendar-editable.js"
			end
			private
			def viewable_name
				viewable_js_name.underscore.pluralize
			end
		end
	end
