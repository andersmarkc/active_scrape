# spec/models/active_scrape/scrape_data_spec.rb
require 'rails_helper'

RSpec.describe ActiveScrape::ScrapeData, type: :model do
  include ActionDispatch::TestProcess::FixtureFile

  it 'saves valid scrape data' do
    data = described_class.new(
      data: { key: 'value' },
      scraped_at: Time.current
    )
    expect(data.save).to be true
  end
end
