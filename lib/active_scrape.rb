require "active_scrape/version"
require "active_scrape/engine"

module ActiveScrape
  extend ActiveSupport::Concern

  class_methods do
    def has_scraper(scraper_name)
      # Define scraping settings or initializations here
      # You can store configurations in scrape.yml
    end
  end
end
