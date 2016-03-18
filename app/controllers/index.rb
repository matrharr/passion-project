get '/' do
  erb :index
end

post '/users' do
  @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect "/users/#{@user.id}"
    else
      erb :index
    end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end
