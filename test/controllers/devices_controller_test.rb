require 'test_helper'
require 'json'

class DevicesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Should get JSON:API error block when requesting ip address data with invalid value or not exists" do
    get :show, params: { ip_address: '1.1.1.1' }
    assert_response 404

    jdata = JSON.parse response.body
    assert_equal "NotFound", jdata['error']
    assert_equal "1.1.1.1", jdata['ip_address']
  end

  test "Should get valid device data" do
    address = addresses('one')
    get :show, params: { ip_address: '1.2.3.4' }
    assert_response :success

    jdata = JSON.parse response.body
    assert_equal address.device.to_s, jdata['device']
    assert_equal address.ip_address.to_s, jdata['ip_address']
  end
end
