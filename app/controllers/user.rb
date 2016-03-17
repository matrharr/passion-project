get '/users/embarrassment' do
  @embarassment = User.find_by(id: session[:user_id]).challenge.embarrassment
  erb :'/users/embarrassment'
end

get '/users/progress' do
  @progress = Challenge.find_by(user_id: session[:user_id])
  erb :'/users/progress'
end

get '/users/challenge' do
  @challenge = Challenge.find_by(user_id: session[:user_id])
  erb :'/users/challenge'
end

get '/users/accountability_group' do
  erb :'users/accountability_group'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
