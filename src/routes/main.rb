class MikesWebsite < Sinatra::Application

  get '/' do
    erb :main
  end

end