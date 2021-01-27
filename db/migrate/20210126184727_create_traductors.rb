class CreateTraductors < ActiveRecord::Migration[6.1]
  def change
    create_table :traductors do |t|
      t.string :nombre, limit: 100
      t.string :correo, limit: 50

      t.timestamps
    end
  end
end
