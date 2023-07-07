class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @category = Group.find(params[:category_id])
    puts @category.inspect
    @transactions = @category.operations.order(created_at: :desc)
    puts @transactions.inspect
    @total_amount = @transactions.sum(:amount)
  end

  def new
    @category = Group.find(params[:category_id])
    @transaction = @category.operations.new
  end

  def create
    @category = Group.find(params[:category_id])
    @transaction = @category.operations.new(transaction_params)
    @transaction.author_id = current_user.id

    if @transaction.save
      puts "params: #{params.inspect}"
      puts "params[:operation]: #{params[:operation].inspect}"

      group_id = params[:category_id]
      GroupOperation.create(group_id:, operation_id: @transaction.id)

      redirect_to category_transactions_path(@category), notice: 'Transaction created!'
    else
      puts @transaction.errors.inspect
      flash[:error] = @transaction.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def transaction_params
    params.require(:operation).permit(:name, :amount, group_ids: [])
  end
end
