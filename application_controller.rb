require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do
    wiki_search = params[:wiki_search]
    @scrape_results = scrape_wiki_results("https://en.wikipedia.org/wiki/" + wiki_search)
    erb :result
  end
end
