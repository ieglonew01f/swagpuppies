class RequestsController < ApplicationController
  def index
    requests = Request.all

    json_response({ message: I18n.t('common.success'), requests: requests }, :ok)
  end

  def create
    type = params[:type]
    for_id = params[:for_id]

    if type.blank? or for_id.blank?
      json_response({ message: I18n.t('common.unprocessable_entity') }, :unprocessable_entity)
      return
    end

    request = Request.new

    request.type = type
    request.by_id = current_user.id
    request.for_id = for_id

    request.save!

    json_response({ message: I18n.t('common.success'), request: request }, :ok)
  end
end
