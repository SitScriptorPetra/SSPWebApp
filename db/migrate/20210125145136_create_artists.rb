class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :city, limit: 50
      t.string :name, limit: 100
      t.string :genre, limit: 3
      t.text :bio, limit: 4000
      t.string :web, limit: 200
      t.string :band, limit: 50

      t.timestamps
    end
  end
end
