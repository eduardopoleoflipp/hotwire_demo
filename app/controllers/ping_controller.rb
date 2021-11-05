# frozen_string_literal: true

# Controller that sends a simple OK message.
class PingController < ApplicationController

  skip_before_action :ensure_logged_in
  def index
    build_commit = ENV['CONTAINER_BUILD_COMMIT'] || ''
    render status: :ok,
           json: {
             commit: build_commit
           }
  end

end
