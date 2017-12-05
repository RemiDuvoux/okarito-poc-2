class BotWebhokController < ApplicationController
  def answer
    @params = JSON.parse(request.body.read)
    content_type :json
    {
      replies: [{ type: 'text', content: 'Roger that' }],
      conversation: {
        memory: {
          key: 'value'
        }
      }
    }.to_json
  end
end
