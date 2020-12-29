class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :comments, dependent: :delete_all
  has_many :votes, dependent: :delete_all
end
