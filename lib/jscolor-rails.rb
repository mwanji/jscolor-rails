require "jscolor-rails/version"

module Jscolor
  module Rails
    class Engine < ::Rails::Engine
      initializer "jscolor.assets.precompile" do |app|
        app.config.assets.precompile << %w(*.gif *.png)
      end
      
      rake_tasks do
        load "tasks/assets-non-digest.rake"
      end
    end
  end
end
