require_relative "boot"

require "rails/all"
require_relative '../app/middlewares/my_custom_middleware'
# require_relative '../app/middlewares/my_chain_middleware'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Backend
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")



    config.middleware.use MyCustomMiddleware
    # config.middleware.use MyCustomMiddleware2    //chain based



  end
end
