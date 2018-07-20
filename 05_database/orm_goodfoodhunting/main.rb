     
require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'


def run_sql(sql)
  conn = PG.connect(dbname: 'goodfoodhunting')
  result = conn.exec(sql)
  conn.close
  result
end

require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'

get '/' do
  @dishes = Dish.all
  erb :index
end
# getting the form ready
get '/dishes/new' do
  erb :new
end

get '/dishes/:id' do
  @dish = Dish.find(params[:id]) # find is always by id, find_by find by first argument
  @comments = @dish.comments
  erb :dish_details
end

# creating a dish
post '/dishes' do
  dish = Dish.new
  dish.name - params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect '/'
end

delete '/dishes/:id' do 
  dish = Dish.find(param[:id])
  dish.destroy
  redirect '/'
end

get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  erb :edit
end

put '/dishes/:id' do
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  redirect "/dishes/#{params[:id]}"
end

post '/comments' do
  comment = Comment.new
  comment.dish_id = params[:dish_id]
  comment.content = params[:content]
  comment.save
  redirect "dishes/#{params[:dish_id]}"
end




