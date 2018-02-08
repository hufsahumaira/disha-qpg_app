require 'test_helper'

class AddQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get add_questions_new_url
    assert_response :success
  end

end
