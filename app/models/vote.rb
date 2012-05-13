class Vote < ActiveRecord::Base
  attr_accessible :value
  belongs_to :candidate
end
