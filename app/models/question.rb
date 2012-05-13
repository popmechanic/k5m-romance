class Question < ActiveRecord::Base
  attr_accessible :text
  belongs_to :candidate
  validates_presence_of :candidate_id
end
