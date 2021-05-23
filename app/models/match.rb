class Match < ApplicationRecord
  belongs_to :player
  belongs_to :game
  validates :score, :player_id, presence: true
end
