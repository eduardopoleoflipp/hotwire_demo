# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks
# use npm instead of Yarn https://github.com/rails/webpacker/issues/405
Rake::Task['yarn:install'].clear
Rake::Task['webpacker:check_yarn'].clear
namespace :yarn do
  task install: :environment do
  end
end
namespace :webpacker do
  task check_yarn: :environment do
  end
end
