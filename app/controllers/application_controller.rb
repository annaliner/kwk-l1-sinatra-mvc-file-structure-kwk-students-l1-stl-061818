require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_folder, "public"
  end

  get '/' do #this is default homepage 
  	erb :index
  end
  
  post '/' do 
    @the_fortune=get_fortune #method get_fortune is connected to the instance variable @the_fortune
    @the_user=params[:user] #creates a new instance variable called @the_user 
    #params is a hash that stores user input. basically is saved as user from html in the box that you type in.
    return erb :results 
  end
  
end
