class SessionsController < ApplicationController
  skip_before_action :login_required
  include Captcha

  #before_action :generate_captcha_key, only: [:new]

  def new
    if current_user
      redirect_back_or_default
    else
      Rails.logger.debug "--------#{session[:captcha_key]}"
      @user = User.new
      #@img = Image.new(session[:captcha_key]).generate
    end
  end

  def captcha
    Rails.logger.debug "--------#{session[:captcha_key]}"
    generate_captcha_key unless session[:captcha_key]
    @img = Image.new(session[:captcha_key]).generate
    render plain: @img
    #send_data @img, type: 'image/png', disposition: 'inline'
  end

  def valid_captcha
    msg = {result: false, msg: ''}
    if captcha_valid?(params[:captcha])
      msg[:result] = true
    else
      msg[:msg] = '图片验证码输入有误'
    end

    render json: msg
  end

  def create
    Rails.logger.info "============#{login_params} #{login_params[:password]}"
    unless captcha_valid?(params[:captcha])
      @msg = "验证码错误！"
      raise CustomError::AccessDenied.new(@msg,".get_captcha" )
    end
    @user = User.find_by("(phone=:phone or name=:phone) and state=1", phone: login_params[:phone])
    if !@msg && @user && @user.authenticate(login_params[:password])
      flash.notice = "欢迎来到明珠数据平台!"
      authenticate_user(@user)
      redirect_back_or_default(@user.is_authed? ? mine_users_path : company_users_path )
    else
      raise CustomError::AccessDenied.new("用户名或密码错误",".get_captcha" )
      #@user = User.new
      ##@img = Image.new(session[:captcha_key]).generate

      #flash.now[:alert] = @msg || "用户名或密码错误"
      #render :new
    end
  end

  def destroy
    unauthenticate_user

    redirect_to root_path
  end

  private
  def login_params
    params.require(:user).permit(:phone, :password)
  end
end
