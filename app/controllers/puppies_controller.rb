class PuppiesController < ApplicationController
  def index
    puppies = Puppy.all

    json_response({ message: I18n.t('common.success'), puppies: puppies }, :ok)
  end

  def show
    # Oh such cute much wow omg :) 
    pupper_id = params[:pupper_id]

    raise I18n.t('common.unprocessable_entity') if pupper_id.nil?

    pupper = Puppy.find(pupper_id)

    raise I18n.t('common.unprocessable_entity') if pupper.nil?

    json_response({ message: I18n.t('common.success'), pupper: pupper }, :ok)
  end

  def search

  end
end
