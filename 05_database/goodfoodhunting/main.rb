     
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

get '/' do
  @dishes = run_sql('SELECT * FROM dishes;')
  erb :index
end
# getting the form ready
get '/dishes/new' do
  erb :new
end

get '/dishes/:id' do
  result = run_sql("SELECT * FROM dishes WHERE id = #{params[:id]};")
  @dish = result.first
  @comments = run_sql("SELECT * FROM comments WHERE dish_id = #{params[:id]}")
  erb :dish_details
end

# creating a dish
post '/dishes' do
  sql = "INSERT INTO dishes (name, image_url) VALUES ('#{params[:name]}','#{params[:image_ulr]}');"
  run_sql(sql)
  redirect '/'
end

# creating a dish
delete '/dishes/:id' do 
  sql = "DELETE FROM dishes WHERE id = #{params[:id]};"
  run_sql(sql)
  redirect '/'
end

get '/dishes/:id/edit' do
  result = run_sql("SELECT * FROM dishes WHERE id = #{params[:id]};")
  @dish = result.first
  erb :edit
end

put '/dishes/:id' do
  sql = "UPDATE dishes SET name = '#{params[:name]}',  image_url = '#{params[:image_url]}' WHERE id = #{params[:id]};"
  run_sql(sql)
  redirect "/dishes/#{params[:id]}"
end

post '/comments' do
  sql = "INSERT INTO comments (content, dish_id) VALUES ('#{params[:content]}', #{params[:dish_id]});"
  run_sql(sql)
  redirect "dishes/#{params[:dish_id]}"
end




