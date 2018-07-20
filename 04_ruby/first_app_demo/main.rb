require 'sinatra'
require 'pry'
require 'sinatra/reloader'

# http request
# different methods - get

# query string - anything htat comes with a question mark
# is equal to a key value pair
# goes into a variable called params
#  http://ww.dt.com/jdsl?name=dt

get '/' do 
  '<h1> this is home</h1><a href="/about">about</a>'
end

get '/about' do 
   '<h1>its me. alex</h1><a href="/">home</a>'
end

#localhost:4567/hello?name=>slackers
get "/hello" do
  "<h2>Yellow #{params['name']}</h2>"
end

# if the clinet request this path and provides string num1 & num2
# loaclhost4567/crappy_calc?num1=5&num2=8
get '/crappy_calc' do
  #looks for erb files in the view directory
  # lookts for views/calc.erb
  erb(:calc)
end

get '/sum' do
  @total = params['num1'].to_i + params['num2'].to_i
  erb(:sum)
end

# route 

get '/will_it_rain_tomorrow' do
  responses = [ 
  "It is certain", 
  "It is decidedly so", 
  "Without a doubt", 
  "Yes definitely",
  "You may rely on it",
  "As I see it yes",
  "Most likely",
  "Outlook good",
  "Yes", "Signs point to yes", 
  "Reply hazy try again", 
  "Ask again later",
  "Better not tell you now", 
  "Cannot predict now", 
  "Concentrate and ask again",
  "Don't count on it", 
  "My reply is no", 
  "My sources say no",
  "Outlook not so good", 
  "Very doubtful"
]
"<h1>#{responses.sample}</h1>"
end