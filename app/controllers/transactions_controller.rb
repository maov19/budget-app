class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def transactions_page
    @category = Group.find(params[:category_id])
    @transactions = @category.operations
  end

  def index
    # Add your code for the transactions page here
  end

  def new
    # Add your code for the new transaction page here
  end
end
