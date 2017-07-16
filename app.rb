require 'sinatra'

get '/' do 
  @message = 'hello world'
  @sum = 1 + 1
  erb :index
end