class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :tvshows, through: :favorites

    validates :name, presence: true
    validates :username, presence: true, uniqueness: true 


end
