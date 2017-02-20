class AddColumnsToBeds < ActiveRecord::Migration[5.0]
  def change
    add_column :beds, :type, :string
  end
end
