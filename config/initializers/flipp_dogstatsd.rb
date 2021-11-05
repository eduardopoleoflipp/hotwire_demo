# frozen_string_literal: true

require 'flipp-ruby-dogstatsd'

ENV['USE_DATADOG'] = '1'

FlippDatadog.configure do |config|
  # Default tags to be passed with every metric
  config.tags = %W(
    env:#{Rails.env}
  )
  config.service     = 'turbo_stimulus_example_project'
  config.environment = Rails.env
end

FlippDatadog.client.namespace = 'turbo_stimulus_example_project'
