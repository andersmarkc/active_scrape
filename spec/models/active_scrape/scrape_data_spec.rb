# spec/models/active_scrape/scrape_data_spec.rb

require 'rails_helper'

RSpec.describe ActiveScrape::ScrapeData, type: :model do
  describe 'Validations' do
    it 'saves valid scrape data' do
      data = ActiveScrape::ScrapeData.new(
        data: { key: 'value' },
        scraped_at: Time.current
      )
      expect(data.save).to be true
    end
  end
end
