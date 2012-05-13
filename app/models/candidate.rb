class Candidate < ActiveRecord::Base
  attr_accessible :name, :text
  has_many :questions
  has_many :votes
end
