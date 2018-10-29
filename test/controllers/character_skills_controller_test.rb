require 'test_helper'

class CharacterSkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get character_skills_index_url
    assert_response :success
  end

  test "should get show" do
    get character_skills_show_url
    assert_response :success
  end

end
