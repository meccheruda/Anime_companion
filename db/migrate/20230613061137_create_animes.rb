class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title,       null: false
      t.text :description,   null: false
      t.string :year,        null: false
      t.text :image_url,     null: false
      t.string :quote,       null: false
      t.string :production,  null: false
      t.string :directed_by, null: false
      t.integer  :genre1_id,  null: false
      t.integer  :genre2_id,  null: false
      t.integer  :genre3_id,  null: false
      t.string :name1
      t.string :name2
      t.string :name3
      t.string :name4
      t.string :name5
      t.string :name6
      t.string :name7
      t.string :name8
      t.string :name9
      t.references :user,    foreign_key: true
      t.timestamps
    end
  end
end
