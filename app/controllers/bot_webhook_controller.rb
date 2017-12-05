class BotWebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def answer
    require 'json'

    @answer = {
      "replies": [{ "type": "text", "content": "Roger that" }],
      "conversation": {
        "memory": {
          "key": "value"
        }
      }
    }.to_json
    render json: @answer

    # @params = JSON.parse(params.to_s)
  end
end
