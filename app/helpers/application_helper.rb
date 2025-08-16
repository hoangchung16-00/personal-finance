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

  def resources_path(controller_name, **params)
    send("#{controller_name}_path", params)
  end
end
