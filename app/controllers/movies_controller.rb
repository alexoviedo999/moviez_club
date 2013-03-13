class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def search
    title = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{title}"
    html = HTTParty.get(url)
    @result = JSON(html)
    @movie = Movie.new
    @movie.title = @result["Title"]

    @movie.director = @result['Director']
    @movie.plot = @result['Plot']
    @movie.year = @result['Year']
    @movie.poster = @result['Poster']

    render :new
  end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      render @movie
    else
      render new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

end