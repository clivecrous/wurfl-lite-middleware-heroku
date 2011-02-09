require 'sinatra'

get '/' do
  content_type :text
  request.env[ 'WURFL' ].to_yaml
end
