get '/' do
  @albums = Album.all

  # discard line once sign in, sign out and sessions pages have been written
  @current_user = false

  erb :index
end
