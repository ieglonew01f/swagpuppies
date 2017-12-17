class UsersController < ApplicationController
  def index
  	user = User.find(current_user.id)

  	raise I18n.t('common.unprocessable_entity') if user.nil?
  	json_response({ message: I18n.t('common.success'), user_data: user }, :ok)
  end

  def show
  	username = params[:username]

  	raise I18n.t('common.unprocessable_entity') if username.nil?

  	user = User.select([:first_name, :last_name, :username, :avatar]).find_by_username(username)
  	raise I18n.t('common.unprocessable_entity') if user.nil?
  	json_response({ message: I18n.t('common.success'), user_data: user }, :ok)
  end
end
