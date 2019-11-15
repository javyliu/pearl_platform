class User < MeteDb
  self.table_name = 't_user'

  #三次合录不成功后冻结用户时间（小时）
  FrozeTime = 24
  TryThreshold = 3
  # @param [string] uname
  # @param [string] pwd
  def self.authenticate(uname, pwd)
    user = self.find_by(username: uname)
    user && Digest::MD5.base64digest(pwd) == user.password ? user : nil
  end


end
