class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :location
  has_many :users_skills
  has_many :skills, through: :users_skills
  enum role: { developer: 0, designer: 1 }
end