require 'sinatra'
require 'sinatra/logger'

get '/' do
  File.readlines('log/development.log').map {|line| "<p>#{line}</p>"}
end

get '/cookies' do
  cookies = params['cookies']
  logger.warn(cookies)
end

post '/cookies' do
  cookies = params['cookies']
  logger.warn(cookies)
end
