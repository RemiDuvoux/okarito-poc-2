class BotWebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def answer
    require 'json'
    # require 'recastai'
    @text = params["message"]["attachment"]["content"]
    client = RecastAI::Client.new(ENV['recast_token'])
    client.request.analyse_text(@text)
    client.connect.broadcast_message('Roger that, sir')

    # @answer = {
    #   "replies": [{ "type": "text", "content": "Roger that" }],
    #   "conversation": {
    #     "memory": {
    #       "key": "value"
    #     }
    #   }
    # }.to_json
    # render json: @answer

    # @params = JSON.parse(params.to_s)
  end
end
