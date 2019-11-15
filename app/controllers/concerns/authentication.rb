module Authentication
  extend ActiveSupport::Concern

  included do
    before_action :login_required
    helper_method :current_user
  end


  def login_required
    !!current_user || access_denied
  end

  def current_user
    @current_user ||= (login_from_session || false) if @current_user != false
  end

  def is_me?(user_id)
    current_user && current_user.id.to_s == user_id.to_s
  end

  private

  def store_location
    session[:return_to] = request.fullpath
  end

  def redirect_back_or_default(default='/')
    _tmp = session[:return_to] || default
    session[:return_to] = nil
    redirect_to(_tmp)
  end

  def access_denied
    store_location
    respond_to do |format|
      format.html do
        redirect_to new_session_path(params[:format])
      end
      format.js do
        render :inline => "location.href='#{new_session_path(:format => :html)}'"
      end
      format.any do
        redirect_to new_session_path(params[:format])
      end
    end
  end

  def login_from_session
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def authenticate_user(user)
    session[:user_id] = user.id
    user.remember_me_for(2.day)
    #cookies['Api-Token'] = user.remember_token
    @current_user = user
  end


  def unauthenticate_user
    @current_user = nil
    session.destroy
    #cookies.delete('Api-Token')
  end
end
