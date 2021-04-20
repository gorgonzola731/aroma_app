require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module CsvDataSample
  class Application < Rails::Application
    config.load_defaults 6.0
    config.autoload_paths << Rails.root.join("lib/autoloads")
  end
end

module AromaApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    config.i18n.default_locale = :ja
    config.time_zone = 'Asia/Tokyo'
  end
end
