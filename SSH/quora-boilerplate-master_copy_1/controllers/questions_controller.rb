get "/question_view" do
	@user = User.find_by_id(session[:user_id])
	@question = Question.all.where(user_id: current_user.id)
	erb :"questions"
end

get "/question/:id" do
	@user = User.find_by_id(session[:user_id])
	@single = Question.find_by(id: params[:id])
	@answers = Answer.find_by(question_id: params[:id])
	erb :"question_single"
end

post "/questions" do
	if session[:user_id]
		user = User.find_by_id(session[:user_id])
		question = Question.new(question_to_ask: params[:question][:question_to_ask], user_id: user[:id])
		question.save
	end
	
	if question.save
		redirect "/users/#{user.id}"
	end
end
