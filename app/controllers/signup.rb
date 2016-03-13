get '/account/new' do
  erb :signup
end

post '/account/make_goal' do
  p 'hiiiiiiiiiiiiiiiiiii'
  redirect '/account/make_goal'
end

get '/account/make_goal' do
  p 'yyyyyyyyyooooooooooooo'
  erb :'/account/make_goal'
end

post '/account/submit_embarrassment' do
  redirect 'account/submit_embarrassment'
end

get '/account/submit_embarrassment' do
  erb :'account/submit_embarrassment'
end

post '/account/mentor_email' do
  redirect 'account/mentor_email'
end

get '/account/mentor_email' do
  erb :'account/mentor_email'
end

post '/account/link_social' do
  redirect 'account/link_social'
end

get '/account/link_social' do
  erb :'account/link_social'
end
