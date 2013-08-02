get '/' do
  # Look in app/views/index.erb
  # Sign up or log in
  erb :index
end

get '/lobby' do
  # Find a game to play
  erb :lobby
end

post '/users' do
  @user = User.new(user_name: params[:user_name], password: params[:password])
  @user.save!
  erb :lobby
end

post '/login' do
  @user = User.find_by_user_name(params[:user_name])
  p @user
  p params[:password]
  if @user
    erb :lobby
  else
    redirect '/'
  end
end

get '/logout' do
  logout
  redirect '/'
end

get '/play' do
  # Board for playing tic tac toe
end

post '/play' do
  # Board for playing tic tac toe
end
