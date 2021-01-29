require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @company = companies(:hometown_painting)
  end

  test "displays all companies" do
    get companies_path
    assert_response :success
  end

  test "displays a single company" do
    get company_path(@company)
    assert_response :success
  end
end
