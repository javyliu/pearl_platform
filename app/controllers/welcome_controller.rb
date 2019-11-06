class WelcomeController < ApplicationController
  def index
    @welcome = "哈哈，也可以监听在00000上  ?"
    logger.info("还是不行么111？")
    logger.info("change in vim？")
  end
end
