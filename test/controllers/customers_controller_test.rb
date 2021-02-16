require "test_helper"

class CustomersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @customer = customers(:test_one)
  end

  test "displays all customers" do
    get company_customers_path(@customer.company)
    assert_response :success
  end

  test "displays a single customer" do
    get company_customer_path(@customer.company, @customer)
    assert_response :success
  end
end
