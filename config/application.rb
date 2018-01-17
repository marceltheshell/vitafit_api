require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module VitafitRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end

    config.action_dispatch.default_headers = {
      'Access-Control-Allow-Origin' => 'http://localhost:4200',
      'Access-Control-Allow-Origin' => 'https://vitafitpt.herokuapp.com',
      'Access-Control-Request-Method' => %w{GET POST PUT DELETE OPTIONS}.join(",")
    }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
