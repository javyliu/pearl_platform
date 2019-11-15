class WelcomeController < ApplicationController
  skip_before_action :login_required
  def index
    @welcome = "哈哈，也可以监听在00000上，使用foreman后监听到5000上了，原来也是么,使用foreman后会监听到5000上，只是browsersync不能监听了  NNN?"
    logger.info("还是不行么怎么sdfsdf？")
    logger.info("change in vim？")
  end
end
