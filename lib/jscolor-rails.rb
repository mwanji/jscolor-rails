require "jscolor-rails/version"

module Jscolor
  module Rails
    class Engine < ::Rails::Engine
      initializer "jscolor.assets.precompile" do |app|
        app.config.assets.precompile << %w(arrow.gif cross.gif hs.png hv.png)
      end
    end
  end
end
