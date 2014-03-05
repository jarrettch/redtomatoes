class MoviesController < ApplicationController
    respond_to :json

    def index
        # @movie = RottenMovie.find(:title => "Scarface", :limit => 1)
        @box_office = RottenList.find(:type => "box_office", :limit => 10)
        respond_with(@box_office)
    end
end
