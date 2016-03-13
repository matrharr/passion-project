get '/account/new' do
  erb :signup
end

post '/account' do
  p params[:user]
  p '################3'
  @user = User.new(params[:user])
  p @user
  p 'userrrrrrrrrrrr'
    if @user.save
      redirect "/account/make_goal"
    else
      redirect '/account/new'
    end
end

get '/account/make_goal' do
  erb :'/account/make_goal'
end

post '/account/make_goal' do
  @current_weight = params[:current_weight]
  @goal_weight = params[:goal_weight]
  @challenge_duration = params[:challenge_duration]
  redirect '/account/submit_embarrassment'
end

get '/account/submit_embarrassment' do
  erb :'account/submit_embarrassment'
end

post '/account/submit_embarrassment' do
  @embarrassment = params[:embarrassment]
  redirect 'account/mentor_email'
end

get '/account/mentor_email' do
  erb :'account/mentor_email'
end

post '/account/mentor_email' do
  @mentor_email = params[:mentor_email]
  redirect 'account/link_social'
end

get '/account/link_social' do
  erb :'account/link_social'
end

post '/account/link_social' do

  redirect '/home'
end
