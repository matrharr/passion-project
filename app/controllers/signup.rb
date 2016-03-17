get '/account/new' do
  erb :signup
end

post '/account' do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
end

post '/account/make_goal' do
  p params
  @challenge = Challenge.create(goal_distance: params[:goal_distance], challenge_duration: params[:challenge_duration], embarrassment: params[:embarrassment], user_id: session[:id])
  p @challenge
end

# get '/account/make_goal' do
#   erb :'/account/make_goal'
# end

# post '/account/make_goal' do
#   @current_weight = params[:current_weight]
#   @goal_weight = params[:goal_weight]
#   @challenge_duration = params[:challenge_duration]
#   redirect '/account/submit_embarrassment'
# end

# get '/account/submit_embarrassment' do
#   erb :'account/submit_embarrassment'
# end

# post '/account/submit_embarrassment' do
#   @embarrassment = params[:embarrassment]
#   redirect 'account/link_social'
# end

# get '/account/link_social' do
#   erb :'account/link_social'
# end

# post '/account/link_social' do
#   redirect '/home'
# end
