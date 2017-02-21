class AddColumnInUseToBeds < ActiveRecord::Migration[5.0]
  def change
    add_column :beds, :available, :integer
  end
end
