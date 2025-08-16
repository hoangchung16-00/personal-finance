class AccountsController < ApplicationController
  before_action :authenticate_user!
  def index
    @pagy, @accounts = pagy(Account.where(user: current_user))
  end
end
