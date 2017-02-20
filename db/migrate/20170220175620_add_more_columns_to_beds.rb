class AddMoreColumnsToBeds < ActiveRecord::Migration[5.0]
  def change
    add_column :beds, :type_count, :string
    remove_column :beds, :room
    remove_column :beds, :table
    remove_column :beds, :lamp
    remove_column :beds, :customer
  end
end
