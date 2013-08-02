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
  #@user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    give_token
  else
    redirect_to home_url
  end
end

get '/play' do
  # Board for playing tic tac toe
end

post '/play' do
  # Board for playing tic tac toe
end
