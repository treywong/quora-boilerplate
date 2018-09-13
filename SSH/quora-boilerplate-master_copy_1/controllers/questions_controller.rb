get "/question_view" do
	@user = User.find_by_id(session[:user_id])
	@question = Question.all.where(user_id: current_user.id)
	erb :"questions"
end

get "/question/:id" do
	@user = User.find_by_id(session[:user_id])
	@question = Question.find_by(id: params[:id])
	@answers = Answer.all.where(question_id: params[:id])
	erb :"question_single"
end

get "/question_all" do
	@user = User.find_by_id(session[:user_id])
	@question = Question.all
	erb :"question_all"
end

post "/questions" do
	if session[:user_id]
		user = User.find_by_id(session[:user_id])
		question = Question.new(question_to_ask: params[:question][:question_to_ask], user_id: user[:id], questioner_name: user[:username])
		question.save
	end
	
	if question.save
		redirect "/users/#{user.id}"
	end
end

post '/answers/:id' do
	if session[:user_id]
		answer = Answer.new(params[:answer])
		answer.question_id = Question.find_by_id(params[:id]).id
		answer.answerer_name = User.find_by_id(session[:user_id]).username
	end
	if answer.save
		redirect back
	end
end
