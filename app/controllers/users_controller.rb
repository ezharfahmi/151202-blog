# Create new user

get '/users/new' do
	erb :"user/new"
end


post '/users' do 
	user = User.create(name: params[:name], email: params[:email], password: params[:password])
	redirect "/users/#{user.id}"
end

#Display user edit

get '/users/:id/edit' do 
	@user = User.find(params[:id])
	erb :"user/edit"
end
# Update user

patch '/users/:id' do

end
# Delete user

delete '/users/:id' do

end

# View user profile

get '/users/:id' do
	@user = User.find(params[:id])
	erb :'user/show'
end