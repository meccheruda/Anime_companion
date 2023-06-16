class Anime < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :genre_id1, numericality: { other_than: 1 , message: "can't be blank"}
end
