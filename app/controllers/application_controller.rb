
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # get '/' do
  #   redirect to "/articles"
  # end

  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @new_article = Article.create(params)
    redirect to "/articles/#{@new_article.id}"
  end

  get '/articles/:id' do
    @article = Article.find_by_id(params[:id])
    erb :show
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/:id/edit' do

  end

  patch '/articles/:id' do

  end
end
