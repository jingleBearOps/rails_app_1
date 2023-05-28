require "test_helper"

class TopWaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @top_ware = top_wares(:one)
  end

  test "should get index" do
    get top_wares_url
    assert_response :success
  end

  test "should get new" do
    get new_top_ware_url
    assert_response :success
  end

  test "should create top_ware" do
    assert_difference("TopWare.count") do
      post top_wares_url, params: { top_ware: { description: @top_ware.description, origin: @top_ware.origin, price: @top_ware.price, style: @top_ware.style } }
    end

    assert_redirected_to top_ware_url(TopWare.last)
  end

  test "should show top_ware" do
    get top_ware_url(@top_ware)
    assert_response :success
  end

  test "should get edit" do
    get edit_top_ware_url(@top_ware)
    assert_response :success
  end

  test "should update top_ware" do
    patch top_ware_url(@top_ware), params: { top_ware: { description: @top_ware.description, origin: @top_ware.origin, price: @top_ware.price, style: @top_ware.style } }
    assert_redirected_to top_ware_url(@top_ware)
  end

  test "should destroy top_ware" do
    assert_difference("TopWare.count", -1) do
      delete top_ware_url(@top_ware)
    end

    assert_redirected_to top_wares_url
  end
end
