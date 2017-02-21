class ChangeColumnAvaialbleToBeds < ActiveRecord::Migration[5.0]
  def change
    rename_column :beds, :available, :in_use
  end
end
