require 'nokogiri'
require 'open-uri'

def scraper
  # html = open('https://www.indeed.com/jobs?q=web+developer&l=remote')
  $jobs = []
  5.times do
    reps = 0
    html = open("https://www.indeed.com/jobs?q=web+developer&l=remote&#{reps}")
    doc = Nokogiri::HTML(html)
    job_listings = doc.css('div.jobsearch-SerpJobCard')
    job_listings.each do |job_ad|
      job = {
        title: job_ad.css('h2 a')[0].attributes['title'].value.gsub(/\n/, ''),
        company: job_ad.css('span.company').text.gsub(/\n/, ''),
        location: job_ad.css('span.location').text.gsub(/\n/, ''),
        link: 'https://indeed.com' + job_ad.css('h2 a')[0].attributes['href'].value.gsub(/\n/, ''),
        salary: job_ad.css('span.salaryText').text.gsub(/\n/,'')
      }
      job.delete_if {|k, v| v == '' }
      $jobs << job
    end
    reps += 10
  end
end

def displayer
  scraper
  puts "#{$jobs.length} amount of jobs were found!"
  puts $jobs
end
displayer
