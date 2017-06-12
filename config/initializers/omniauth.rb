Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tumblr, Rails.application.secrets.tumblr_provider_key, Rails.application.secrets.tumblr_provider_secret
  provider :facebook, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
  provider :twitter, Rails.application.secrets.twitter_omniauth_key, Rails.application.secrets.twitter_omniauth_secret
  {
      :secure_image_url => 'true',
      :image_size => 'original',
      :authorize_params => {
        :force_login => 'true',
        :lang => 'pt'
      }
    }
end
