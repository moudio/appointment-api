# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Appointment
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.api_only = true
    config.load_defaults 5.2
    config.assets.initialize_on_precompile = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    def cors_set_access_control_headers
     headers['Access-Control-Allow-Origin'] = '*'
     headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
     headers['Access-Control-Request-Method'] = '*'
     headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
 end
  end
end
