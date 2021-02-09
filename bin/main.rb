# rubocop:disable Metrics/MethodLength
require 'nokogiri'
require 'open-uri'
require_relative 'scraper'
require_relative '../lib/validation'

def displayer
  puts 'Hello, welcome to the indeed remote job scraper, here are the professions supported by the scraper as of now:'
  puts '-------------------------------------------------------------------------------------------------------------'
  ar = Validation.new
  ar.display
  puts '---------------------------------------------'
  puts 'enter your profession of choice!'
  smiggles = true
  while smiggles
    var1 = gets.chomp
    if ar.validator(var1)
      var1.gsub!(/\s+/, '+')
      al = Scraper.new(var1)
      al.scraper
      puts "#{al.jobs.length} amount of jobs were found!"
      puts '------------------------------------'
      puts al.jobs
      smiggles = false
    else
      puts 'Please select a supported profession'
    end
  end
end
displayer
# rubocop:enable Metrics/MethodLength
