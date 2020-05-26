require 'httparty'
require 'nokogiri'
require 'byebug'
require_relative '../page_data'

def fetch(url)
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)

  assets = parsed_page.css('img').map{ |i| i['src'] }.compact
  links = parsed_page.css('a').map { |i| i['href'] }.compact

  Page_data.new(assets, links)
end
