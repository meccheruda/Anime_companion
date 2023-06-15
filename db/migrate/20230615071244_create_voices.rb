class CreateVoices < ActiveRecord::Migration[7.0]
  def change
    create_table :voices do |t|
      t.string :name
      t.references :anime,  foreign_key: true
      t.timestamps
    end
  end
end
