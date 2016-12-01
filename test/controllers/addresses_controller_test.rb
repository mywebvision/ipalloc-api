require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Creating new device with valid data should create new device" do
    post :assign, params: { ip_address: '1.3.4.5',
                            device: "New Device 1" }
    assert_response 201
    jdata = JSON.parse response.body
    assert_equal 'New Device 1', jdata['device']
    assert_equal '1.3.4.5', jdata['ip']
  end

  test "Creating new device with invalid data should not create new device" do
    post :assign, params: {}
    assert_response 422
    jdata = JSON.parse response.body
    assert_equal 'can\'t be blank', jdata['errors'][0]['detail']
  end
end
