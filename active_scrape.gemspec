require_relative "lib/active_scrape/version"

Gem::Specification.new do |spec|
  spec.name        = "active_scrape"
  spec.version     = ActiveScrape::VERSION
  spec.authors     = ["andersmarkc"]
  spec.email       = ["andersmarkc@gmail.com"]
  spec.homepage    = "https://github.com/andersmarkc/active_scrape"
  spec.summary     = "A scraping utility for Rails applications, designed to work similarly to ActiveStorage."
  spec.description = "ActiveScrape provides an easy-to-use scraping framework for Rails applications, allowing models to declare 'has_scraper' associations to fetch and store scraped data. Compatible with Rails 7 and higher."
  spec.license     = "MIT"

  # Allow pushing to RubyGems.org
  # Remove the "allowed_push_host" metadata to permit pushes to any host
  # or set it to a specific host if necessary.

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/andersmarkc/active_scrape"
  spec.metadata["changelog_uri"] = "https://github.com/andersmarkc/active_scrape/blob/main/CHANGELOG.md"

  # Files included in the gem
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  # Dependencies
  spec.add_dependency "rails", ">= 7.0.6", "< 8.0"
end
