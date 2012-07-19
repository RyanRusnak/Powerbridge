class Device < ActiveRecord::Base
  attr_accessible :alternate_dns_server, :amps, :customer_id, :default_gateway, :descName, :desc_bucket, :desc_location, :device_type, :domain_name, :ds_name, :firmware, :frame_size, :host_name, :incom_address, :ip_address_setting, :lan_type, :mac_address, :modbus_tcp_enabled, :name, :plug_ctrating, :power_factor, :preferred_dns_server, :status, :subnet_mask, :trending, :upstream_device, :voltage_class, :created_at

  belongs_to :customer
  
  def realStatus
    if self.status == 0
      self.status = "Not found"
    elsif self.status == 1
      self.status = "Detected"
    elsif self.status == 2
      self.status = "Complete"
    end
  end
  
end
