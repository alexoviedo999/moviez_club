class MoviesController < ApplicationController
  def new
  end

  def show
    title = params[:title].gsub(' ', '+')
    url = "http://www.omdbapi.com/?t=#{title}"
    html = HTTParty.get(url)
    @hash = JSON(html)
  end

end