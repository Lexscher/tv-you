class User < ApplicationRecord
    has_many :users
    has_many :favorites, through: :favorites
end
