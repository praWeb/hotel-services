class CreateLamps < ActiveRecord::Migration[5.0]
  def change
    create_table :lamps do |t|

      t.timestamps
    end
  end
end
