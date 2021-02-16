class CustomersController < ApplicationController
  before_action :set_company
  before_action :set_customer, except: [:index, :create, :new]

  def index
    @customers = @company.customers
  end

  def new
    @customer = Customer.new
  end

  def show
  end

  def create
    @customer = @company.customers.new(customer_params)
    if @customer.save
      redirect_to company_customers_path(@company), notice: "Customer has added"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
      redirect_to company_customers_path(@company), notice: "Customer has updated"
    else
      render :edit
    end
  end

  def destroy
    @customer.destroy!
    redirect_to company_customers_path(@company), notice: 'Customer has been deleted successfully.'
  end

  private
    def customer_params
      params.require(:customer).permit(:first_name,
        :last_name, :email)
    end

    def set_company
      @company ||= Company.find params[:company_id]
    end

    def set_customer
      @customer ||= @company.customers.find params[:id]
    end
end
