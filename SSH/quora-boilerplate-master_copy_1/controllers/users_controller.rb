get '/' do
  erb :"home"
end

get '/signup' do
  erb :"signup"
end

get '/login' do
  erb :"login"
end

post '/signup' do
	user = User.new(params[:user])
	if user.save
		redirect "/"
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
 	erb :"user_page"
end

get '/logout' do
	session[:user_id] = nil
	@user = nil
	redirect "/"
end