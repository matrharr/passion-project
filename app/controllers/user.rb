get '/users/embarrassment' do
  @embarassment = User.find_by(id: session[:user_id]).challenge.embarrassment
  erb :'/user/embarrassment'
end

get '/users/progress' do
  @progress = Challenge.find_by(user_id: session[:user_id])
  erb :'/user/progress'
end

get '/users/challenge' do
  @challenge = Challenge.find_by(user_id: session[:user_id])
  erb :'/user/challenge'
end

get '/users/accountability_group' do
  erb :'user/accountability_group'
end

get '/users/mentor' do
  @mentor = User.find_by(id: session[:user_id]).challenge.mentor_email
  erb :'user/mentor'
end

get '/users/:id' do
  @user = User.find_by(id: session[:user_id])
  erb :'/user/show'
end
