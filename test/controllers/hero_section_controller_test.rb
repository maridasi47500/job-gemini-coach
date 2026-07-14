require "test_helper"

class HeroSectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hero_section_index_url
    assert_response :success
  end
end
