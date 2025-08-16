module ApplicationHelper
  include Pagy::Frontend

  def camelizations_omniauth
    {
      google_oauth2: "Google",
      facebook: "Facebook"
    }
  end

  def omniauth_action(controller_name)
    controller_name == "registrations" ? "Register" : "Sign in"
  end
end
