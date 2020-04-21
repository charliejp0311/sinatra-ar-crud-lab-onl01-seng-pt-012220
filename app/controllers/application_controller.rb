
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @new_article = Article.new(params['title'], params['content'])
    binding.pry
    erb :show
  end
end
