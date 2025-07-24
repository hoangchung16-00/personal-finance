class AccountsController < ApplicationController
  before_action :authenticate_user!
  def index
    @accounts = Account.where(user: current_user)
  end
end
