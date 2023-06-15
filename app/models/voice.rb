class Voice < ApplicationRecord
  has_many :animes
  has_many :voices,through: :anime_voice
end
