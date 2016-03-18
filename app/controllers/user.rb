get '/users/:id/embarrassment' do
  @embarassment = User.find_by(id: params[:id]).challenge.embarrassment
  erb :'/users/embarrassment'
end

get '/users/:id/progress' do
  @progress = Challenge.find_by(user_id: params[:id])
  erb :'/users/progress'
end

get '/users/:id/challenge' do
  @challenge = Challenge.find_by(user_id: params[:id])
  erb :'/users/challenge'
end

get '/users/:id/accountability_group' do
  p params
  p '$$$$$$$$$$$$$$$$'
  @user = User.find(params[:id])
  p @user
  p '%%%%%%%%%%%%%%%%'
  @group = User.where(accountability_group_id: @user.accountability_group_id)
  p @group
  erb :'users/accountability_group'
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end
