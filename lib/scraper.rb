require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    unparsed = open(index_url)
    page = Nokogiri::HTML(unparsed)
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
