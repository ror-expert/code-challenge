require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  def setup
    @company = companies(:hometown_painting)
  end

  test 'valid customer' do
    customer = @company.customers.new(first_name: 'Rajeev', last_name: 'Khangar', email: 'rajeev@example.com')
    assert customer.valid?
  end

  test 'invalid without first name' do
    customer = @company.customers.new(last_name: 'Khangar', email: 'rajeev@example.com')
    assert_not_nil customer.errors[:first_name]
  end

  test 'invalid without last name' do
    customer = @company.customers.new(first_name: 'Rajeev', email: 'rajeev@example.com')
    assert_not_nil customer.errors[:last_name]
  end

  test 'invalid without email' do
    customer = @company.customers.new(first_name: 'Rajeev', last_name: 'Khangar')
    assert_not_nil customer.errors[:email]
  end
end
