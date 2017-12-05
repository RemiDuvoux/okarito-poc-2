class BotWebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def answer
    # @params = JSON.parse(params.to_s)
    content_type :json
  end
end
