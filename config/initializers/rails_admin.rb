require 'digest/sha1'

class FakeUser
  def self.username
    'admin'
  end

  def self.email
    'kmikeym@kmikeym.com'
  end
end

RailsAdmin.config do |config|
	
	config.authorize_with do
	  authenticate_or_request_with_http_basic('TOP SECRET!.') do |username, password|
	    secret = "d0782ee38f13ba6b12a5e4a84b397806c70904cd"
	    hashed = Digest::SHA1.hexdigest password
	    username == 'kmikeym' && secret == hashed
	  end
		FakeUser
	end
	
	config.authenticate_with{}
  
	config.main_app_name = ['Site', 'Admin']

end