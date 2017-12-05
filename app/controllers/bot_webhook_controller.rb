class BotWebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def answer
    require 'json'

    require 'recastai'

    client = RecastAI::Client.new(ENV['recast_token'])

    client.request.analyse_text('Hi')
    client.connect.broadcast_message('Hello')

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
