class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :delete_all
end
