require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "visiting the welcome index" do
    visit root_path

    assert_selector "h1", text: "哈哈"
  end

  test "visisting the welcome show" do
    visit welcome_show_path
    assert_selector "h2", text: "哈哈"
  end
end
