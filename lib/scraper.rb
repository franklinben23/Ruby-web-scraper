require 'nokogiri'
require 'open-uri'

class Scraper
  attr_accessor :jobs, :entry, :reps
  def initialize(entry)
    @entry = entry
    @jobs = []
    @reps = 4
  end

  def scraper
    @reps.times do
      scraper_build
    end
  end

  private

  def scraper_build
    reps = 0
    html = URI.open("https://www.indeed.com/jobs?q=#{@entry}&l=remote&#{reps}")
    doc = Nokogiri::HTML(html)
    job_listings = doc.css('div.jobsearch-SerpJobCard')
    job_listings.each do |job_ad|
      job = {
        title: job_ad.css('h2 a')[0].attributes['title'].value.delete("\n"),
        company: job_ad.css('span.company').text.delete("\n"),
        location: job_ad.css('span.location').text.delete("\n"),
        link: 'https://indeed.com' + job_ad.css('h2 a')[0].attributes['href'].value.delete("\n"),
        salary: job_ad.css('span.salaryText').text.delete("\n")
      }
      job.delete_if { |_, v| v == '' }
      @jobs << job
    end
    reps + 10
  end
end
