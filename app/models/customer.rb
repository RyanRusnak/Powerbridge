class Customer < ActiveRecord::Base
  attr_accessible :goNum, :name, :status, :deviceCount
  
   # attr_accessible :alternate_dns_server, :amps, :customer_id, :default_gateway, :descName, :desc_bucket, :desc_location, :device_type, :domain_name, :ds_name, :firmware, :frame_size, :host_name, :incom_address, :ip_address_setting, :lan_type, :mac_address, :modbus_tcp_enabled, :name, :plug_ctrating, :power_factor, :preferred_dns_server, :status, :subnet_mask, :trending, :upstream_device, :voltage_class
  
  has_many :devices
end
