class Shareholder < ActiveRecord::Base
  attr_accessible :password, :shares
  has_many :votes
  has_many :questions
end
