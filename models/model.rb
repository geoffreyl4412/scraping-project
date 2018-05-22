require 'nokogiri'
require 'open-uri'
# require 'pry'

def scrape_wiki_results(url)
    html = open(url)
    scraper_results = Nokogiri::HTML(html)
    
    # scraper_results.css("h1").text
    scraper_results.css("p").text
end
