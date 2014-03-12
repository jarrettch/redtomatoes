class MoviesController < ApplicationController
    respond_to :json

    def index
        # @movie = RottenMovie.find(:title => "Scarface", :limit => 1)
        @box_office = RottenList.find(:type => "box_office", :limit => 10)
        @apikey = ENV['REDBOX_API_KEY']
        respond_with(@apikey)
    end

end
