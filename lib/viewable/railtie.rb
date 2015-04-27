require 'rails/railtie'
module Viewable
  class Railtie < Rails::Railtie
    generators do
      require "generators/viewable/install_generator"
    end
  end
end
