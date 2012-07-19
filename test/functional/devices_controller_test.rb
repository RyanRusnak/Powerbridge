require 'test_helper'

class DevicesControllerTest < ActionController::TestCase
  setup do
    @device = devices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:devices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create device" do
    assert_difference('Device.count') do
      post :create, :device => { :alternate_dns_server => @device.alternate_dns_server, :amps => @device.amps, :customer_id => @device.customer_id, :default_gateway => @device.default_gateway, :descName => @device.descName, :desc_bucket => @device.desc_bucket, :desc_location => @device.desc_location, :device_type => @device.device_type, :domain_name => @device.domain_name, :ds_name => @device.ds_name, :firmware => @device.firmware, :frame_size => @device.frame_size, :host_name => @device.host_name, :incom_address => @device.incom_address, :ip_address_setting => @device.ip_address_setting, :lan_type => @device.lan_type, :mac_address => @device.mac_address, :modbus_tcp_ip_enabled => @device.modbus_tcp_ip_enabled, :name => @device.name, :plug_ctrating => @device.plug_ctrating, :power_factor => @device.power_factor, :preferred_dns_server => @device.preferred_dns_server, :status => @device.status, :subnet_mask => @device.subnet_mask, :trending => @device.trending, :upstream_device => @device.upstream_device, :voltage_class => @device.voltage_class }
    end

    assert_redirected_to device_path(assigns(:device))
  end

  test "should show device" do
    get :show, :id => @device
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @device
    assert_response :success
  end

  test "should update device" do
    put :update, :id => @device, :device => { :alternate_dns_server => @device.alternate_dns_server, :amps => @device.amps, :customer_id => @device.customer_id, :default_gateway => @device.default_gateway, :descName => @device.descName, :desc_bucket => @device.desc_bucket, :desc_location => @device.desc_location, :device_type => @device.device_type, :domain_name => @device.domain_name, :ds_name => @device.ds_name, :firmware => @device.firmware, :frame_size => @device.frame_size, :host_name => @device.host_name, :incom_address => @device.incom_address, :ip_address_setting => @device.ip_address_setting, :lan_type => @device.lan_type, :mac_address => @device.mac_address, :modbus_tcp_ip_enabled => @device.modbus_tcp_ip_enabled, :name => @device.name, :plug_ctrating => @device.plug_ctrating, :power_factor => @device.power_factor, :preferred_dns_server => @device.preferred_dns_server, :status => @device.status, :subnet_mask => @device.subnet_mask, :trending => @device.trending, :upstream_device => @device.upstream_device, :voltage_class => @device.voltage_class }
    assert_redirected_to device_path(assigns(:device))
  end

  test "should destroy device" do
    assert_difference('Device.count', -1) do
      delete :destroy, :id => @device
    end

    assert_redirected_to devices_path
  end
end
