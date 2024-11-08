# Rakefile

require File.expand_path('spec/dummy/config/application', __dir__)
require 'rake'
require 'rspec/core/rake_task'

Rails.application.load_tasks

# Define the RSpec task
namespace :spec do
  desc 'Run all RSpec tests'
  RSpec::Core::RakeTask.new(:all) do |t|
    t.pattern = 'spec/**/*_spec.rb'
  end
end

# Set the default task to run RSpec tests
task default: 'spec:all'

# Load engine-specific tasks
load 'rails/tasks/statistics.rake'

# Include bundler tasks
require 'bundler/gem_tasks'
