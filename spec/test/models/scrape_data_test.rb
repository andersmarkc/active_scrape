# test/models/active_scrape/scrape_data_test.rb
require 'test_helper'

class ActiveScrape::ScrapeDataTest < ActiveSupport::TestCase
  test "should save valid scrape data" do
    puts 'dd'
    data = ActiveScrape::ScrapeData.new(
      data: { key: 'value' },
      scraped_at: Time.current
    )
    assert data.save, "Failed to save valid scrape data"
  end
end
