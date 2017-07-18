class Question < ApplicationRecord
  belongs_to :user

  has_many :answers
  has_many :comments, as: :commentable
  has_many :votes, as: :votable

  def time_since_creation
    ((Time.now - created_at) / 3600).round
  end
end
