get "/tweet/:id" do
	@user = User.find_by_id(session[:user_id])
	@tweet = Tweet.find_by(id: params[:id])
	erb :"static/tweet_single"
end

get "/twitter_all" do
	@user = User.find_by_id(session[:user_id])
	@tweet = Tweet.all
	erb :"static/twitter_all"
end

post "/tweets" do
	if session[:user_id]
		user = User.find_by_id(session[:user_id])
		tweet = Tweet.new(params[:tweet])
		tweet.username = user[:username]
		tweet.user_id = user[:id]
		tweet.save
	end
	
	if tweet.save
		redirect "/users/#{user.id}"
	else
		redirect back
	end
end

post "/update_tweet/:id" do
	tweet = Tweet.find_by(id: params[:id])
	tweet.update(post: params[:tweet][:post])
	
	if tweet.save
		redirect "/users/#{tweet.user_id}"
	end
end

post "/delete_tweet/:id" do
	tweet = Tweet.find_by(id: params[:id])
	tweet.destroy

	redirect "/users/#{tweet.user_id}"
end

post "/follow/:id" do
	user = User.find_by_id(params[:id])
	follower = User.find_by_id(session[:user_id])

	@follower = Follower.new(follower_id: follower.id, follower_name: follower.username ,user_id: user.id, username: user.username)
	@follower.save
	if @follower.save
		redirect back
	end
end

post "/delete_follow/:id" do
	follower = Follower.find_by(follower_id: session[:user_id],user_id: params[:id])
	follower.destroy

	redirect back
end

get "/follow" do
	@user = User.find_by_id(session[:user_id])
	@follower = Follower.all.where(follower_id: session[:user_id])
	@leader = Follower.all.where(user_id: session[:user_id])
	erb :"static/follower"
end