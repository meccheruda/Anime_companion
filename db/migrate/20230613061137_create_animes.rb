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
      t.integer  :genre_id,  null: false
      t.references :user,    foreign_key: true
      t.timestamps
    end
  end
end
