module Viewable
	module Generators
		class ViewsGenerator < Rails::Generators::Base
			source_root File.expand_path('../templates/views', __FILE__)
			argument :viewable_views_name, :type => :string, :default => "resources"
			def generate_viewable_views
				template "_errors.html.erb", "app/views/#{viewable_views_name.pluralize}/_errors.html.erb"
				template "_form.html.erb", "app/views/#{viewable_views_name.pluralize}/_form.html.erb"
				template "edit.html.erb", "app/views/#{viewable_views_name.pluralize}/edit.html.erb"
				template "index.html.erb", "app/views/#{viewable_views_name.pluralize}/index.html.erb"
				template "new.html.erb", "app/views/#{viewable_views_name.pluralize}/new.html.erb"
				template "viewings/_errors.html.erb", "app/views/viewings/_errors.html.erb"
				template "viewings/_form.html.erb", "app/views/viewings/_form.html.erb"
				template "viewings/edit.html.erb", "app/views/viewings/edit.html.erb"
				template "viewings/index.html.erb", "app/views/viewings/index.html.erb"
				template "viewings/new.html.erb", "app/views/viewings/new.html.erb"
				template "viewings/show.html.erb", "app/views/viewings/show.html.erb"
			end
		end
	end
end
