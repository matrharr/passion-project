get '/' do
  erb :index
end

post '/home' do
  redirect :'/home'
end

get '/home' do
  erb :home
end
