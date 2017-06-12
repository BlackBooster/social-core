class User < ApplicationRecord
cattr_accessor :current_user
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info']
        user.name = auth['info']['name'] || ""
        user.nickname = auth['info']['nickname']
        user.image = auth['info']['image']
        user.description = auth['info']['description']
        user.url =  auth['info']['urls']['Twitter']
      end
      if auth['credentials'] 
        user.token = auth['credentials']['token']
      	user.secret = auth['credentials']['secret']
      end
    end
  end
end
