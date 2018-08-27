require "bootswatch/version"

module Bootswatch
  #thanks to bootstrap-rubygem
  class << self
    # Inspired by Kaminari
    def load!
      if rails?
        register_rails_engine
      elsif hanami?
        register_hanami
      elsif sprockets?
        register_sprockets
      elsif defined?(::Sass) && ::Sass.respond_to?(:load_paths)
        # The deprecated `sass` gem:
        ::Sass.load_paths << stylesheets_path
      end
    end

    # Paths
    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def javascripts_path
      File.join assets_path, 'javascripts'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'assets'
    end

    # Environment detection helpers
    def sprockets?
      defined?(::Sprockets)
    end

    def rails?
      defined?(::Rails)
    end

    def hanami?
      defined?(::Hanami)
    end

    private

    def register_rails_engine
      require 'bootswatch/engine'
    end

    def register_sprockets
      Sprockets.append_path(stylesheets_path)
      Sprockets.append_path(javascripts_path)
    end

    def register_hanami
      Hanami::Assets.sources << assets_path
    end
  end
end

Bootswatch.load!
