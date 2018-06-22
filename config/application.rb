require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
# require "action_cable/engine"
require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Curtainly
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.action_mailer.default_url_options = { host: 'localhost:3000' }

    config.action_mailer.asset_host = "https://#{ENV['EMAIL_HOST']}"

    config.action_mailer.default charset: 'utf-8'

    config.action_mailer.delivery_method = :smtp

    config.action_mailer.smtp_settings = {
      address: ENV['EMAIL_SERVER_ADDRESS'],
      port: 465,
      domain: ENV['EMAIL_DOMAIN'],
      authentication: 'login',
      enable_starttls_auto: true,
      user_name: ENV['EMAIL_USERNAME'],
      password: ENV['EMAIL_PASSWORD']
    }
  end
end
