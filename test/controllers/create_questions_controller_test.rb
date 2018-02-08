require 'test_helper'

class CreateQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get create_questions_new_url
    assert_response :success
  end

  test "should get create" do
    get create_questions_create_url
    assert_response :success
  end

end
