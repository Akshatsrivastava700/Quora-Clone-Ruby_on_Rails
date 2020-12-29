require "test_helper"

class DeleteQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get delete_question" do
    get delete_questions_delete_question_url
    assert_response :success
  end
end
