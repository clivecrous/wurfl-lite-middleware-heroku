require 'sinatra'

before do
  @phone = request.env[ 'WURFL' ]
end

get '/' do
  erb @phone ? :show_phone_information : :not_a_phone
end

get '/dump' do
  content_type :text
  @phone.to_yaml
end
