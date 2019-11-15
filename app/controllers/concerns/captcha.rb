module Captcha

  extend ActiveSupport::Concern

  included do
    @@is_api = self.class < Grape::API
  end


  private

  def set_key(value)
    if @@is_api
      value
    else
      session[:captcha_key] = value
    end
  end

  def get_key
    headers['Captcha-Key'] || session[:captcha_key]
  end

  def captcha_valid?(str, del=true)
    return false if str.blank?
    _key = get_key
    _value = Rails.cache.read(_key)
    Rails.cache.delete(_key) if _key && del
    _value == str.downcase
  end

  def generate_captcha_key
    get_key || set_key("captcha:#{SecureRandom.uuid.gsub(/-/,'')}")
  end
end
