Rails.application.routes.draw do
  mount ActiveScrape::Engine => "/active_scrape"
end
