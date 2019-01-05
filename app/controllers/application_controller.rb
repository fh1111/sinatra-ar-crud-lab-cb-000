
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles/new' do #loads new form
    erb :new
  end

  post '/articles' do  #creates a post
    @post = Article.create(params)
    redirect to '/articles'
  end 


  get '/' do

  end
end
