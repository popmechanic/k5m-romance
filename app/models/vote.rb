class Vote < ActiveRecord::Base
  attr_accessible :value
  belongs_to :candidate
  validates_presence_of :candidate_id
end
