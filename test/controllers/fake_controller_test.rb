require 'test_helper'

class FakeControllerTest < ActionDispatch::IntegrationTest
  test "should get page1" do
    get fake_page1_url
    assert_response :success
  end

  test "should get page2" do
    get fake_page2_url
    assert_response :success
  end

  test "should get page3" do
    get fake_page3_url
    assert_response :success
  end

  test "should get page4" do
    get fake_page4_url
    assert_response :success
  end

end
