class TwitterController < ApplicationController
  helper_method :twitter_user
  helper_method :twitter_home
  def get_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["twitter_omniauth_key"]
      config.consumer_secret     = ENV["twitter_omniauth_secret"]
      config.access_token        = current_user.token
      config.access_token_secret = current_user.secret
    end
  end


  def twitter_user
    get_client.user_timeline(current_user.nickname)
  end

  def twitter_home
    get_client.home_timeline
  end

  def update_user_account
    user_twitter_profile = get_client.user
    current_user.update_attributes({
      name: user_twitter_profile.name, 
      location: user_twitter_profile.location, 
      description: user_twitter_profile.description
    })
    redirect_to "/twitter"
  end
end
