class CreateJoinTableArtistBand < ActiveRecord::Migration[6.1]
  def change
    create_join_table :artists, :bands do |t|
      # t.index [:artist_id, :band_id]
      # t.index [:band_id, :artist_id]
    end
  end
end
