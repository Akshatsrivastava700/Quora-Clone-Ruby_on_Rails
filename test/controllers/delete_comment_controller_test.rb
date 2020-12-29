require "test_helper"

class DeleteCommentControllerTest < ActionDispatch::IntegrationTest
  test "should get delete_comment" do
    get delete_comment_delete_comment_url
    assert_response :success
  end
end
