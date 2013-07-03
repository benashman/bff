get '/' do
  haml :index
end

get '/:user_a/:user_b' do
  @user_a = Twitter.user(params[:user_a])
  @user_b = Twitter.user(params[:user_b])

  # query relationship
  @relationship_status = Twitter.friendship?(@user_a, @user_b)

  haml :query
end

post '/' do
  # submit new query
  redirect to "/#{strip_prepend(params['user_a'])}/#{strip_prepend(params['user_b'])}"
end
