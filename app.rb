require 'bundler/setup'
Bundler.require
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require './models'

get '/' do 
  @name = Users.last.name if not Users.last.nil?
  @message = 'hello world'
  @sum = 1 + 1
  erb :index
end

post '/posted' do
  @message = 'hello world'
  @sum = 1 + 1
  Users.create({name: params[:name]})
  @name = Users.last.name
  erb :index
end