# rubocop:disable Style/GlobalVars
require 'nokogiri'
require 'open-uri'
require_relative 'scraper'

def displayer
  puts 'enter the profession of choice'
  var1 = gets.chomp
  var1.gsub!(/\s+/, '+')
  al = Scraper.new(var1)
  al.scraper
  puts "#{$jobs.length} amount of jobs were found!"
  puts $jobs
end
displayer
# rubocop:enable Style/GlobalVars
