get '/' do
  erb :"static/home"
end

get '/signup' do
  erb :"static/signup"
end

get '/login' do
  erb :"static/login"
end

post '/signup' do
	user = User.new(params[:user])
	if user.save
		redirect "/"
	else
		redirect back
	end
end

post '/login' do
	user = User.find_by(email: params[:user][:email])
	if user && user.authenticate(params[:user][:password])
		session[:user_id] = user.id
		redirect "/users/#{user.id}"
	else
		redirect back
	end
end

get '/users/:id' do
	@user = User.find_by(id: params[:id])
	@tweet = Tweet.all.where(user_id: params[:id])
 	erb :"static/user_page"
end

get '/logout' do
	session[:user_id] = nil
	@user = nil
	redirect "/"
end

# psql -d twitter_sinatra_assessment-master_development