class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  layout :set_layout
  include Pagy::Backend
  rescue_from Pagy::OverflowError, with: :redirect_to_last_page

  private

  def set_layout
    if devise_controller?
      "devise"
    else
      "application"
    end
  end

  def redirect_to_last_page(exception)
    redirect_to url_for(page: exception.pagy.last)
  end
end
