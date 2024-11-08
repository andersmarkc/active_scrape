source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in active_scrape.gemspec.
gemspec

gem "puma"

gem "sqlite3"

gem "sprockets-rails"

# Scrape dependencies
gem "httparty"
gem "nokogiri"
gem "selenium-webdriver"


group :development, :test do
  gem 'rspec-rails', '~> 5.1' # Use the latest compatible version with your Rails version
end
