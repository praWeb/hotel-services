class ChangeColumnTypeBeds < ActiveRecord::Migration[5.0]
  def change
    change_column :beds, :bed_count, 'integer USING bed_count::integer'
  end
end
