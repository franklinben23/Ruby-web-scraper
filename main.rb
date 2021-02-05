# rubocop:disable Style/GlobalVars
require 'nokogiri'
require 'open-uri'
require_relative 'scraper'

def displayer
  al = Scraper.new
  al.scraper
  puts "#{$jobs.length} amount of jobs were found!"
  puts $jobs
end
displayer
# rubocop:enable Style/GlobalVars
