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
    config.assets.initialize_on_precompile = false
    config.action_dispatch.default_headers = {
        'Access-Control-Allow-Origin' => 'https://appointcar.netlify.app',
        'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
      }


    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
