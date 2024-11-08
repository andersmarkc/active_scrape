module ActiveScrape
  class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    source_root File.expand_path("templates", __dir__)

    # Implement the required interface for Rails::Generators::Migration.
    def self.next_migration_number(dirname)
      if @migration_number
        @migration_number += 1
      else
        @migration_number = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
      end
      @migration_number.to_s
    end

    def copy_scrape_yml
      template "scrape.yml", "config/scrape.yml"
    end

    def copy_migrations
      migration_template "create_scrape_data.rb", "db/migrate/create_scrape_data.rb"
    end
  end
end
