class CreateScrapeData < ActiveRecord::Migration[7.0]
  def change
    create_table :scrape_data do |t|
      t.references :scrapable, polymorphic: true, index: true
      t.json :data
      t.datetime :scraped_at
      t.timestamps
    end
  end
end
