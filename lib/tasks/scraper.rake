namespace :scrape do
  desc "Scrape shareholder information from K5M"
  task :k5m => :environment do
    require 'open-uri'
    puts "Updating shareholders..."
    got_404 = false
    user_id = 0
    while got_404 == false
      user_id += 1
      url = "http://kmikeym.com/users/#{user_id}"
      doc = Nokogiri::HTML(open(url))
      puts doc.at_css("#user-holdings").text
    end
    puts "done."
  end
end