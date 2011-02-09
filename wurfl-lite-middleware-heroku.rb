require 'sinatra'

before do
  @phone = request.env[ 'WURFL' ]
end

get '/' do
  erb :show_phone_information
end

get '/dump' do
  content_type :text
  @phone.to_yaml
end
