class ChangeColumnsToBeds < ActiveRecord::Migration[5.0]
  def change
    rename_column :beds, :type, :bed_type
    rename_column :beds, :type_count, :bed_count
  end
end
