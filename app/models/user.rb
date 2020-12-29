class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions, dependent: :delete_all
  has_many :answers, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_many :votes, dependent: :delete_all
end
