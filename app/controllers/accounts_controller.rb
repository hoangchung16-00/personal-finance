class AccountsController < ApplicationController
  before_action :authenticate_user!
  def index
    @pagy, @accounts = pagy(current_user.accounts)
  end
end
