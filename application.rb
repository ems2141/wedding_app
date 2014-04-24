require 'sinatra/base'

class Application < Sinatra::Application

  get '/' do
    guests = DB[:guests].all

    erb :index, :locals => {:guests => guests}
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    guests = DB[:guests]
    guest_name = params[:name]
    guests.insert(:name => guest_name)

    redirect '/'
  end
end