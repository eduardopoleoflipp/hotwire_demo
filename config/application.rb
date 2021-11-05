# frozen_string_literal: true

require_relative 'boot'

require 'action_view/railtie'
require 'sprockets/railtie'
require 'action_controller/railtie'
require 'active_record/railtie'
require 'active_job/railtie'
require 'action_cable'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# :nodoc:
module TurboStimulusExampleProject
  # :nodoc:
  class Application < Rails::Application

    # since we're using Turbo
    config.action_view.form_with_generates_remote_forms = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.time_zone = 'Eastern Time (US & Canada)'
    require 'rack-cas/session_store/active_record'
    config.rack_cas.session_store = RackCAS::ActiveRecordStore

  end
end
