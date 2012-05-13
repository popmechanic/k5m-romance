class Vote < ActiveRecord::Base
  attr_accessible :value
  belongs_to :candidate
  belongs_to :shareholder
  validates_presence_of :value, :candidate_id, :shareholder_id
end
