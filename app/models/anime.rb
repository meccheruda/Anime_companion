class Anime < ApplicationRecord
  belongs_to :user
  has_many :voices
  has_many :voices,through: :anime_voice

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
end
