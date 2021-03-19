require "test_helper"

class VehculesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehcule = vehcules(:one)
  end

  test "should get index" do
    get vehcules_url, as: :json
    assert_response :success
  end

  test "should create vehcule" do
    assert_difference('Vehcule.count') do
      post vehcules_url, params: { vehcule: { description: @vehcule.description, mark: @vehcule.mark, sold: @vehcule.sold, vehicule: @vehcule.vehicule, year: @vehcule.year } }, as: :json
    end

    assert_response 201
  end

  test "should show vehcule" do
    get vehcule_url(@vehcule), as: :json
    assert_response :success
  end

  test "should update vehcule" do
    patch vehcule_url(@vehcule), params: { vehcule: { description: @vehcule.description, mark: @vehcule.mark, sold: @vehcule.sold, vehicule: @vehcule.vehicule, year: @vehcule.year } }, as: :json
    assert_response 200
  end

  test "should destroy vehcule" do
    assert_difference('Vehcule.count', -1) do
      delete vehcule_url(@vehcule), as: :json
    end

    assert_response 204
  end
end
