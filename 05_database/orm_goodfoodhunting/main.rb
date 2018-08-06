     
require 'sinatra'
require 'sinatra/reloader' # only reloads main.rb by default
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
require_relative 'models/user'
require_relative 'models/like'


enable :sessions

helpers do

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

end


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

get '/api/dishes/:id' do
  @dish = Dish.find(params[:id])
  content_type :json
  return @dish.to_json
end

# creating a dish
post '/dishes' do
  dish = Dish.new
  dish.name = params[:name]
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
  redirect '/login' unless logged_in?
  dish = Dish.find(params[:id])
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect "/dishes/#{params[:id]}"
end

def make_comment
  @comment.save!
end

def do_stuff

  begin
    make_comment()
  rescue
    # do something here when exception happens
  end
  
end

post '/comments' do
  redirect '/login' unless logged_in?
  comment = Comment.new
  comment.dish_id = params[:dish_id]
  comment.content = params[:content]
  comment.save
  redirect "/dishes/#{params[:dish_id]}"
end

get '/login' do
  erb :login
end

post '/session' do
  # grab email and password
  # find the user by email
  user = User.find_by(email: params[:email])
  # authenticate user with password
  if user && user.authenticate(params[:password])
  # create new session
  session[:user_id] = user.id
  redirect '/'
  #redirect to secret page
  else 
    erb :login
  end

end

delete '/session' do
  # delete the sesion
  session[:user_id] = nil
  redirect '/'
end 

post '/likes' do 
  redirect '/login' unless logged_in?
  like = Like.new
  like.dish_id = params[:dish_id]
  like.user_id = current_user.id
  like.save
  redirect "/dishes/#{params[:dish_id]}"
end

post '/api/likes' do 
  content_type :json
  like = Like.new
  like.dish_id = params[:dish_id]
  like.user_id = current_user.id
  like.save
  {like_count: Dish.find(like.dish_id).likes.count}.to_json
end
