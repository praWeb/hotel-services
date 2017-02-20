class CreateBeds < ActiveRecord::Migration[5.0]
  def change
    create_table :beds do |t|
      t.string :customer
      t.string :room
      t.string :table
      t.string :lamp

      t.timestamps
    end
  end
end
