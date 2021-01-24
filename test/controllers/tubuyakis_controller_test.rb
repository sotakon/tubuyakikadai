require 'test_helper'

class TubuyakisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tubuyakis_index_url
    assert_response :success
  end

end
