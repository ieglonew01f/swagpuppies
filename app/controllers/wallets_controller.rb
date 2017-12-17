class WalletsController < ApplicationController
  def index
    wallet = Wallet.find_by_user_id(current_user.id)

    if !wallet.nil?
      json_response({ message: I18n.t('common.success'), balance: wallet.balance }, :ok)
    else
      json_response({ message: I18n.t('common.unprocessable_entity') }, :unprocessable_entity)
    end
  end

  def create
    # Do not create a wallet if already exist
    wallet = Wallet.find_by_user_id(current_user.id)

    raise I18n.t('wallet.wallet_already_exist') if wallet.nil?

    # Creating a wallet
    wallet = Wallet.create(:user_id => current_user.id)

    if wallet.save!
      user = User.find(current_user.id)
      user.wallet_id = wallet.id
      if user.save!
        json_response({ message: I18n.t('wallet.wallet_configured') }, :ok)
      end
    end
  end
end
