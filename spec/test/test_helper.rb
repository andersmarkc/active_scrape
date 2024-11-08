# Configure Rails Environment
ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../dummy/config/environment.rb", __FILE__)
require "rails/test_help"

# Ensure migrations are up to date
ActiveRecord::Migration.maintain_test_schema!

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("fixtures", __dir__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + "/files"
  ActiveSupport::TestCase.fixtures :all
end
