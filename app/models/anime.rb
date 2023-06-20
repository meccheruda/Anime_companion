class Anime < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    %w[title year production name1 name2 name3 name4 name5 name6 name7 name8 name9]
  end
  def self.ransackable_associations(auth_object = nil)
    %w[genre user]
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :genre_id1, numericality: { other_than: 1 , message: "can't be blank"}
end
