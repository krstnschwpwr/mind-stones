require "test_helper"

class CanCreateTask < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper
  test "create new Tasks" do
    task = tasks(:litter)
    visit tasks_path
    assert page.has_content? task.name
    find_button(id: "button-#{task.id}").click
  end
end


