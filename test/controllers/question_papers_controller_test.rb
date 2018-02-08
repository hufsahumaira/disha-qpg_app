require 'test_helper'

class QuestionPapersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get question_papers_new_url
    assert_response :success
  end

  test "should get create" do
    get question_papers_create_url
    assert_response :success
  end

end
