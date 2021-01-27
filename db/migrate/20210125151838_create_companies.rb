class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name, limit: 100
      t.string :address, limit: 300
      t.string :web, limit: 500
      t.integer :phone

      t.timestamps
    end
  end
end
