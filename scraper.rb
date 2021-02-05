# rubocop:disable Style/GlobalVars
require 'nokogiri'
require 'open-uri'

class Scraper
  def scraper
    $jobs = []
    5.times do
      reps = 0
      html = open("https://www.indeed.com/jobs?q=web+developer&l=remote&#{reps}")
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
        $jobs << job
      end
      reps + 10
    end
  end
end
# rubocop:enable Style/GlobalVars
