class WelcomeController < ApplicationController
  skip_before_action :login_required
  def index
    @welcome = "哈哈，也可以监听在00000上?"
    logger.info("还是不行么怎么sdfsdf？")
    logger.info("change in vim？")
  end
end
