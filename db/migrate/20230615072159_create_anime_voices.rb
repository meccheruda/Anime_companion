class CreateAnimeVoices < ActiveRecord::Migration[7.0]
  def change
    create_table :anime_voices do |t|
      t.references :anime,  foreign_key: true
      t.references :voice,  foreign_key: true
      t.timestamps
    end
  end
end
