class SessionsController < ApplicationController
  def index
    sso_end_point = SsoEndPoint.new(
      :nonce => session.delete(:sso_nonce),
      :sso   => params.delete(:sso),
      :sig   => params.delete(:sig)
    )
    user_info = sso_end_point.user_info
    session[:username] = user_info.fetch('username')
    logger.info("User logged in: #{user_info}")
    redirect_to session.delete(:referral_url)
  end

  def new
    session[:referral_url] = request.referer
    return_url = url_for(action: :index)
    sso_entry = SsoEntryPoint.new(return_url)
    session[:sso_nonce] = sso_entry.nonce
    redirect_to sso_entry.request_url
  end

  def destroy
    UserService.log_out_user_by_id(current_user.id)
    session.delete(:username)
    redirect_to request.referer
  end
end
