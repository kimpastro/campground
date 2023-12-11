require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HipCamp
  class Application < Rails::Application
    config.load_defaults 7.0

    config.active_record.schema_format = :sql
    config.active_record.dump_schemas = :all
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.{rb,yml}")]
    config.i18n.default_locale = :en
    config.time_zone = "UTC"

    # config.autoload_paths << Rails.root.join('lib')

    config.generators do |g|
      g.test_framework :rspec
      g.controller_specs false
      g.request_specs false
      g.view_specs false
      g.helper_specs false
      g.routing_specs false
    end
  end
end
