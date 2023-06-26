class Anime < ApplicationRecord
  belongs_to :user
  has_many :comments
  paginates_per 15

  def self.ransackable_attributes(auth_object = nil)
    %w[title year production name1 name2 name3 name4 name5 name6 name7 name8 name9 genre1_id genre2_id genre3_id]
  end
  def self.ransackable_associations(auth_object = nil)
    %w[user]
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  validates :genre1_id, numericality: { other_than: 1 , message: "can't be blank"}
end
