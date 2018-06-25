# frozen_string_literal: true

class Model < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable,
         omniauth_providers: %i[facebook twitter tumblr]

  def connection_with?(provider)
    auth = authorizations.where(provider: provider).first
    if auth.present?
      auth.token.present?
    else
      false
    end
  end
end
