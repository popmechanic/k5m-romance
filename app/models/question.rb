class Question < ActiveRecord::Base
  attr_accessible :text
  belongs_to :candidate
  belongs_to :shareholder
  validates_presence_of :text, :candidate_id, :shareholder_id
end
