require 'autoprefixer-rails'

module Bootswatch
  module Rails
    class Engine < ::Rails::Engine
      initializer 'bootswatch.assets' do |app|
        %w(stylesheets javascripts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end
    end
  end
end
