# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    redirect_to '/auth/facebook'
  end

  def create
    auth = request.env['omniauth.auth']
    user = User.where(provider: auth['provider'],
                      uid: auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, notice: 'Signed out!'
  end

  def failure
    redirect_to root_url, alert: "Authentication error: #{params[:message].humanize}"
  end

  def twitter_new
    redirect_to '/auth/twitter'
  end

  def twitter_create
    auth = request.env['twitter_omniauth.auth']
    user = User.where(provider: auth['provider'],
                      uid: auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Signed in!'
  end

  def new_tumblr
    redirect_to '/auth/tumblr'
  end

  def create_tumblr
    auth = request.env['tumblr_omniauth.auth']
    user = User.where(provider: auth['provider'],
                      uid: auth['uid'].to_s).first || User.create_with_omniauth(auth)
    reset_session
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Signed in!'
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
