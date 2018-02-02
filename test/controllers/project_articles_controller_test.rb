require 'test_helper'

class ProjectArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get project_articles_index_url
    assert_response :success
  end

end
