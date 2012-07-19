class RenameIPcolumn < ActiveRecord::Migration
  def up
    rename_column :devices, :modbus_tcp_ip_enabled, :modbus_tcp_enabled
  end

  def down
    rename_column :devices, :modbus_tcp_enabled, :modbus_tcp_ip_enabled
  end
end
