Rails.application.routes.draw do

post '/' => 'bot_webhook#answer'

# post '/errors' do
#   puts @params

#   200
# end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
