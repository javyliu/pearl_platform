require 'test_helper'

class WelcomeFlowsTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    get '/'
    assert_select "h1", {count: 1}

  end
end
