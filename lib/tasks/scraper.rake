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
      # easy way to deal with 404s
      begin
        doc = Nokogiri::HTML(open(url))
      rescue
        puts "No more users found at or beyond #{user_id}"
        got_404 = true
        next
      end
      shares = doc.at_css("#user-holdings").text.match(/(\d+)\sshares/)[1]
      shareholder = Shareholder.find_or_create_by_id user_id
      shareholder.shares = shares
      shareholder.password = shareholder.password || Shareholder::make_password
      shareholder.save
      puts "#{user_id} has #{shares} shares"
    end
  end
end