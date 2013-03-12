class MoviesController < ApplicationController
  def index
    @movie = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    title = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{title}"
    html = HTTParty.get(url)
    @movie = JSON(html)
    @movie = Movie.create(:title => title, :url => url)

  end

  def show

  end

end