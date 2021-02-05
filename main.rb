require 'nokogiri'
require 'open-uri'

def scraper
  html = open('https://www.indeed.com/jobs?q=web+developer&l=remote')
  doc = Nokogiri::HTML(html)
  job_listings = doc.css('div.jobsearch-SerpJobCard')
  $jobs = Array.new
  job_listings.each do |job_ad|
    job = [
      title: job_ad.css('h2 a')[0].attributes["title"].value.gsub(/\n/, ""),
      company: job_ad.css('span.company').text.gsub(/\n/,''),
      location: job_ad.css('span.location').text.gsub(/\n/,''),
      link: "https://indeed.com" + job_ad.css('h2 a')[0].attributes["href"].value.gsub(/\n/, "")
  ]
    $jobs << job
  end
  # # this will only happen in there is a salary
  # job_salar1 = job_1.css('span.salaryText').text.gsub(/\n/,'')
 
end

def displayer
  scraper

  puts "#{$jobs.length} amount of jobs were found!"
  puts $jobs
end
# scraper
displayer