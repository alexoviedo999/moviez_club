class ClubsController < ApplicationController
require 'movies_controller.rb'

  def index
    @clubs = Club.all
  end

  def new
    @club = Club.new(:movie_id => @movid.id)
  end

  def create
    #binding.pry
    @club = current_user.build_club(params[:movie].merge(:movie_id => @movie.id))
    if @club.save
      flash[:notice] = "Created Club"
      redirect_to root_url
    else
      flash[:error] = "Unable to create Club"
      render :action => 'new'
    end
  end
end