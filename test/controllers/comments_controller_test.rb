require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get insertComment" do
    get comments_insertComment_url
    assert_response :success
  end
end
