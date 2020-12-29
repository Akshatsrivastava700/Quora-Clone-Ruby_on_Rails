require "test_helper"

class DeleteAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get delete_answer" do
    get delete_answers_delete_answer_url
    assert_response :success
  end
end
