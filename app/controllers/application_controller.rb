# frozen_string_literal: true

# Base class for ActionControllers.
require 'flipp_rack_cas/authentication'
class ApplicationController < ActionController::Base

  include FlippRackCas::Authentication

  def unauthorized_error_handler
    server_url = Rails.application.config.rack_cas.server_url
    redirect_to "#{server_url}login?service=#{request.original_url}"
  end
  protect_from_forgery with: :exception

end
