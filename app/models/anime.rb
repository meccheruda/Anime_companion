class Anime < ApplicationRecord
  belongs_to :user
  has_many :voices
  has_many :voices,through: :anime_voice
end
