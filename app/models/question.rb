class Question < ActiveRecord::Base
  belongs_to :submission
  has_many :scores
end
