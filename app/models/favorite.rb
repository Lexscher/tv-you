class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :tvshow

  validates :user_id, presence: true
  validates :tvshow_id, presence: true
  validates :user_id, uniqueness: { 
    scope: :tvshow_id, 
    message: "You can't favorite the same thing, twice!!" 
  }
  
end
