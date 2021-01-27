class CreateTablaturas < ActiveRecord::Migration[6.1]
  def change
    create_table :tablaturas do |t|
      t.reference :traductor
      t.date :fecha
      t.string :web, limit: 200

      t.timestamps
    end
  end
end
