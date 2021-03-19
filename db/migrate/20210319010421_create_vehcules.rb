class CreateVehcules < ActiveRecord::Migration[6.1]
  def change
    create_table :vehcules do |t|
      t.string :mark
      t.string :vehicule
      t.integer :year
      t.text :description
      t.boolean :sold

      t.timestamps
    end
  end
end
