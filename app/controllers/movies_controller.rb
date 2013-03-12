class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    title = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{title}"
    html = HTTParty.get(url)
    @movie = JSON(html)
    title = @movie["Title"]
    director = @movie['Director']
    plot = @movie['Plot']
    year = @movie['Year']
    poster = @movie['Poster']
    @movie = Movie.create(:title => title, :director => director, :plot => plot, :url => url)
    redirect_to movies_path
  end

  def search

  end


  def show
    @movie = Movie.find(params[:id])
  end

end