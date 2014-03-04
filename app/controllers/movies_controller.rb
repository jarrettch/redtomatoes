class MoviesController < ApplicationController
    respond_to :json

    def index
        @movie = RottenMovie.find(:title => "Scarface", :limit => 1)
        respond_with(@movie)
    end
end
