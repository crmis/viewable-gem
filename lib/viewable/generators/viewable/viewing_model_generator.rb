module Viewable
  module Generators
    class ViewingModelGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates/models', __FILE__)
      argument :resource_name, :type => :string, :default => "resource"

      def generate_viewing_model
        copy_file "viewing.rb", "app/models/viewing.rb"
        template "viewable.rb", "app/models/concerns/viewable.rb"
      end

      def create_viewing_migration
        generate "migration CreateViewings start_time:datetime end_time:datetime length:integer #{resource_name_underscore.singularize}:belongs_to"
      end

      def generate_datetime_initializer
        copy_file "datetime.rb", "config/initializers/datetime.rb"
      end

      private
      def resource_name_underscore
        resource_name.underscore
      end

      def resource_name_camelize
        resource_name.camelize
      end
    end
  end
end
