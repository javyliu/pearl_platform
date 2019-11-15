class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Authentication
  #include CustomError
  include ConstructQuery
  include Breadcrumb

  #def default_url_options
  #  {host: "192.168.0.252", port: 3000}
  #end

  #rescue_from ActionController::InvalidCrossOriginRequest do
  #  self.response_body = nil
  #  render(nothing: true, status: 400)
  #end
  rescue_from CustomError::AccessDenied do |exception|
    Rails.logger.debug "无权访问：#{exception.inspect}"
    @message = exception.message
    respond_to do |format|
      format.html do
        if exception.action
          redirect_to exception.action, alert: @message
        else
          render template: "error", layout: 'no_col'
        end
      end
      format.json do
        render :json => exception.message.kind_of?(Hash) ? exception.message : {error: exception.message}, status: 500
      end
      format.js do
        js_con = "$('#notice').removeClass().addClass('alert').find('>div').html(\"#{html_msg(exception.message)}\");"
        js_con << "$('#{exception.action}').trigger('click');"
        render :js => js_con, content_type: Mime[:js], status: 500
      end
    end
  end

  rescue_from RuntimeError do |exception|
    Rails.logger.debug "报错：#{exception.inspect}"
    @message = exception.message
    respond_to do |format|
      format.html do
        #redirect_to return_url, alert: exception.message
        render template: "error", layout: 'no_col'
      end
      format.json do
        render :json => exception.message.kind_of?(Hash) ? exception.message : {error: exception.message}, status: 500
      end
      #format.js {render :js => "alert('#{exception.message}')"}
      format.js do
        js_con = "$('#notice').removeClass().addClass('alert').find('>div').html(\"#{html_msg(exception.message)}\");"
        render :js => js_con, content_type: Mime[:js], status: 500
      end
    end
  end

  rescue_from ::CanCan::AccessDenied do |exception|
    Rails.logger.debug "----not authed: #{exception.inspect}"
    respond_to do |format|
      format.js do
        #render :js => "alert('#{exception.message}')",content_type: Mime[:js]
        #format.js {render :js => "$('#notice').removeClass().addClass('alert').find('>div').html(\"#{html_msg(exception.message)}\")", content_type: Mime[:js], status: 500}
        js_con = "$('#notice').removeClass().addClass('alert').find('>div').html(\"#{html_msg(exception.message)}\");"
        render :js => js_con, content_type: Mime[:js], status: 500
      end
      format.json do
        render :json => exception.message.kind_of?(Hash) ? exception.message : {error: exception.message}, status: 500
      end
      format.any do
        response.headers.delete('Content-Disposition')
        return_url = exception.action =~ /^\// ? exception.action : root_url
        #return_url = exception.action.presence || root_url
        redirect_to return_url, alert: exception.message
      end
    end

  end
end
