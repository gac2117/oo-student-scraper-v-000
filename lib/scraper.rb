require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    page = Nokogiri::HTML(html)
    students = Array.new
    student_cards = page.css('div.student-card')
    student_cards.each do |i|
      student = {
        name: i.css('.student-name').text
        location: i.css('.student-location').text
      }
  end

  def self.scrape_profile_page(profile_url)

  end

end
