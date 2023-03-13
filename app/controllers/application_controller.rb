class ApplicationController < ActionController::Base

  before_action :get_total_amount

  private

  def get_total_amount
    if current_user.nil?
      @total_amount = '0'
    else
      income = Transfer.where(users: current_user, income: true).sum("sum")
      expense = Transfer.where(users: current_user, income: false).sum("sum")
      @total_amount = (income - expense).to_s
    end
  end
end
