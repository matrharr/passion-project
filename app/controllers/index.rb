get '/' do
  erb :index
end

post '/home' do
  user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/home'
    else
      erb :index
    end
end

get '/home' do
  erb :home
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end
