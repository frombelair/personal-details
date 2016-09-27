require 'sinatra'
get'/' do 
	erb:get_name
end

# post '/name' do
#   "Hello World"
# end
post '/name' do
  name=params[:user_name]
  redirect '/age?users_name=' + name
end
get'/age' do 
	name = params[:users_name].capitalize
	erb :get_age, :locals => {:name => name}  
end
post '/age' do
  age = params[:user_age]
  name = params[:user_name]
  redirect '/3_fav_num?users_name=' + name + "&user_age=" + age
end
get'/3_fav_num' do 
	name = params[:users_name]
	age = params[:user_age]
	erb :get_3_fav_num, :locals => {:name => name, :age => age}  
end
post '/3_fav_num' do
  age = params[:user_age]
  name = params[:user_name]
  num1 = params[:number1] 
  num2 = params[:number2]
  num3 = params[:number3]
  "so #{name} you are #{age} and your 3 favorite numbers are #{num1}, #{num2}, #{num3}"
end
