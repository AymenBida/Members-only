module ApplicationHelper
  def create_a_secret
    render 'shared/create_a_secret' if user_signed_in?
  end

  def show_logged_in
    if user_signed_in?
      render 'shared/logged_in_user'
    else
      render 'shared/sign_buttons'
    end
  end

  def show_alert
    render 'shared/alert' if alert
  end

  def show_notice
    render 'shared/notice' if notice
  end
end
