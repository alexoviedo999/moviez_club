class HomeController < ApplicationController
  layout 'homepage'

  def index
    @movies = Movie.all
  end

  def photomini
    matrix = ImageList.new("http://ia.media-imdb.com/images/M/MV5BMTkzMTUwMDAyMl5BMl5BanBnXkFtZTcwMDIwMTQ1OA@@._V1_SX300.jpg")
    smallmatrix = matrix.minify
    smallmatrix.display
  end

end